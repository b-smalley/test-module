
#include<linux/init.h>
#include<linux/module.h>

static int init(void){
 printk("test-module loaded...\n");
 return 0;
}

static void exit(void){
 printk("test-module unloaded...\n");
}

module_init(init);
module_exit(exit);
