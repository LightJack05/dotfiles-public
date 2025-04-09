CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g $(shell root-config --cflags)
LDFLAGS=-g $(shell root-config --ldflags)
LDLIBS=$(shell root-config --libs)

PROJ=proj

SRCS=main.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: $(PROJ)

$(PROJ): $(OBJS)
	$(CXX) $(LDFLAGS) -o $(PROJ) $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)
	$(RM) $(PROJ) 

distclean: clean
	$(RM) *~ .depend

include .depend
