OBJS=cbmbasic.o runtime.o plugin.o console.o
CFLAGS=-Wall -O3 -fPIC

all: cbmbasic

lib:
	gcc -shared -Wl,-soname,libcbmbasic.so -o libcbmbasic.so $(OBJS)

cbmbasic: $(OBJS)
	$(CC) -o cbmbasic $(OBJS)

clean:
	rm -f $(OBJS) cbmbasic

install:
	cp -i cbmbasic /usr/local/bin

