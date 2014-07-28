KVERS = $(shell uname -r)

#Kernel modules
obj-m += hello.o

build: kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build/ m=$(CURDIR) modules 

clean:
	make -C /lib/modules/$(KVERS)/build m=$(CURDIR) clean
