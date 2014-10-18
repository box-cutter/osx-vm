# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "vagrant-osx109-desktop"
    config.vm.box = "osx109-desktop"
 
    config.vm.provider :virtualbox do |v, override|
      v.gui = true
      v.customize ["modifyvm", "{{.Name}}", "--audiocontroller", "hda"]
      v.customize ["modifyvm", "{{.Name}}", "--boot1", "dvd"]
      v.customize ["modifyvm", "{{.Name}}", "--boot2", "disk"]
      v.customize ["modifyvm", "{{.Name}}", "--chipset", "ich9"]
      v.customize ["modifyvm", "{{.Name}}", "--cpuidset", "00000001", "000306a9", "00020800", "80000201", "178bfbff"]
      v.customize ["modifyvm", "{{.Name}}", "--firmware", "efi"]
      v.customize ["modifyvm", "{{.Name}}", "--hpet", "on"]
      v.customize ["modifyvm", "{{.Name}}", "--keyboard", "usb"]
      v.customize ["modifyvm", "{{.Name}}", "--memory", "2048"]
      v.customize ["modifyvm", "{{.Name}}", "--mouse", "usbtablet"]
      v.customize ["modifyvm", "{{.Name}}", "--vram", "9"]
    end
 
    config.vm.provider :vmware_fusion do |v, override|
        v.gui = true
        v.vmx["memsize"] = "2048"
        v.vmx["numvcpus"] = "1"
        v.vmx["firmware"] = "efi"
        v.vmx["keyboardAndMouseProfile"] = "macProfile"
        v.vmx["smc.present"] = "TRUE"
        v.vmx["hpet0.present"] = "TRUE"
        v.vmx["ich7m.present"] = "TRUE"
        v.vmx["ehci.present"] = "TRUE"
        v.vmx["usb.present"] = "TRUE"
        v.vmx["scsi0.virtualDev"] = "lsilogic"
    end

    config.vm.provider :vmware_workstation do |v, override|
        v.gui = true
        v.vmx["memsize"] = "2048"
        v.vmx["numvcpus"] = "1"
        v.vmx["firmware"] = "efi"
        v.vmx["keyboardAndMouseProfile"] = "macProfile"
        v.vmx["smc.present"] = "TRUE"
        v.vmx["hpet0.present"] = "TRUE"
        v.vmx["ich7m.present"] = "TRUE"
        v.vmx["ehci.present"] = "TRUE"
        v.vmx["usb.present"] = "TRUE"
        v.vmx["scsi0.virtualDev"] = "lsilogic"
    end
end
