obj-m += test.o

# Set the path to the Kernel build utils.
KBUILD=/lib/modules/$(shell uname -r)/build/

default:
	$(MAKE) -C $(KBUILD) M=$(PWD) modules
	rm *.o *.cmd *.symvers *.order *.mod *.mod.* .*

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean
