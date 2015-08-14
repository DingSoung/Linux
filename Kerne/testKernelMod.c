#include <linux/module.h>
#include <linux/kernel.h>
static int __init enable_usermode(void) {
        printk(KERN_INFO "testKernelModenabled.\n");
	return 0;
}
static void __exit disable_usermode(void) {
        printk(KERN_INFO "Usermode disabled.\n");
}
module_init(enable_usermode);
module_exit(disable_usermode);
