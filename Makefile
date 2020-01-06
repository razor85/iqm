CXXFLAGS= -O3 -fomit-frame-pointer
override CXXFLAGS+= -Wall -fsigned-char

IQM_OBJS= \
	iqm.o
UPGRADE_OBJS= \
	upgrade.o

default: all

all: iqm upgrade

clean:
	-$(RM) $(IQM_OBJS) $(UPGRADE_OBJS) iqm upgrade

iqm: iqm.h util.h $(IQM_OBJS)
	$(CXX) $(CXXFLAGS) -o iqm $(IQM_OBJS)
upgrade: iqm.h util.h $(UPGRADE_OBJS)
	$(CXX) $(CXXFLAGS) -o upgrade $(UPGRADE_OBJS)
