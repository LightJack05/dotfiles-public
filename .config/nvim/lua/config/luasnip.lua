local ls = require("luasnip")
local s, t, i, f, rep = ls.snippet, ls.text_node, ls.insert_node, ls.function_node, require("luasnip.extras").rep

local function filename_to_guard_name()
  return function(_, snip)
    return snip.env.TM_FILENAME:upper():gsub("%W", "_")
  end
end

ls.add_snippets(nil, {
  c_sharp = {
    s("///", { t("/// <summary>"), t({ "", "/// " }), i(1), t({ "", "/// </summary>" }) })
  },
  cpp = {
    s("#iguard", {
      t("#ifndef "), f(filename_to_guard_name(), {}),
      t({ "", "#define " }), f(filename_to_guard_name(), {}),
      t({ "", "", "" }), i(1),
      t({ "", "", "#endif // " }), f(filename_to_guard_name(), {}),
    })
  },
  yaml = {
    s("k-tls-ingress", {
      t({ "---", "apiVersion: networking.k8s.io/v1", "kind: Ingress", "metadata:", "  name: " }),
      i(1, "my-ingress"), t({ "", "  namespace: " }), i(2, "default"),
      t({ "", "  annotations:", "    cert-manager.io/cluster-issuer: lightjack-kubernetes-ca", "spec:", "  tls:", "    - hosts:", "      - " }),
      i(3, "example"), t(".kubernetes.lightjack.lan"),
      t({ "", "      secretName: " }), i(4, "my-tls-secret"),
      t({ "", "  ingressClassName: nginx", "  rules:", "  - host: \"" }), rep(3), t(".kubernetes.lightjack.lan"),
      t({ "\"", "    http:", "      paths:", "      - pathType: Prefix", "        path: \"/\"", "        backend:", "          service:", "            name: " }),
      i(5, "my-service"), t({ "", "            port:", "              number: " }), i(6, "80"),
    })
  }
})

-- Keymap
vim.keymap.set({ "n", "i", "s" }, "<C-L>", function() require("luasnip").jump(1) end, { silent = true })
vim.keymap.set({ "n", "i", "s" }, "<C-H>", function() require("luasnip").jump(-1) end, { silent = true })
