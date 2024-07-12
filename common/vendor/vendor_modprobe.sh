domain_trans(init, vendor_modinstall-sh_exec, vendor_modprobe)
allow vendor_modprobe vendor_shell_exec:file rx_file_perms;
allow vendor_modprobe vendor_toolbox_exec:file rx_file_perms;
