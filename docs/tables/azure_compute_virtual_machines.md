
# Table: azure_compute_virtual_machines
VirtualMachine describes a Virtual Machine
## Columns
| Name        | Type           | Description  |
| ------------- | ------------- | -----  |
|subscription_id|text|Azure subscription id|
|plan_name|text|The plan ID|
|plan_publisher|text|The publisher ID|
|plan_product|text|Specifies the product of the image from the marketplace This is the same value as Offer under the imageReference element|
|plan_promotion_code|text|The promotion code|
|hardware_profile_vm_size|text|Specifies the size of the virtual machine <br><br> The enum data type is currently deprecated and will be removed by December 23rd 2023 <br><br> Recommended way to get the list of available sizes is using these APIs: <br><br> [List all available virtual machine sizes in an availability set](https://docsmicrosoftcom/rest/api/compute/availabilitysets/listavailablesizes) <br><br> [List all available virtual machine sizes in a region]( https://docsmicrosoftcom/en-us/rest/api/compute/resourceskus/list) <br><br> [List all available virtual machine sizes for resizing](https://docsmicrosoftcom/rest/api/compute/virtualmachines/listavailablesizes) For more information about virtual machine sizes, see [Sizes for virtual machines](https://docsmicrosoftcom/en-us/azure/virtual-machines/sizes) <br><br> The available VM sizes depend on region and availability set Possible values include: 'BasicA0', 'BasicA1', 'BasicA2', 'BasicA3', 'BasicA4', 'StandardA0', 'StandardA1', 'StandardA2', 'StandardA3', 'StandardA4', 'StandardA5', 'StandardA6', 'StandardA7', 'StandardA8', 'StandardA9', 'StandardA10', 'StandardA11', 'StandardA1V2', 'StandardA2V2', 'StandardA4V2', 'StandardA8V2', 'StandardA2mV2', 'StandardA4mV2', 'StandardA8mV2', 'StandardB1s', 'StandardB1ms', 'StandardB2s', 'StandardB2ms', 'StandardB4ms', 'StandardB8ms', 'StandardD1', 'StandardD2', 'StandardD3', 'StandardD4', 'StandardD11', 'StandardD12', 'StandardD13', 'StandardD14', 'StandardD1V2', 'StandardD2V2', 'StandardD3V2', 'StandardD4V2', 'StandardD5V2', 'StandardD2V3', 'StandardD4V3', 'StandardD8V3', 'StandardD16V3', 'StandardD32V3', 'StandardD64V3', 'StandardD2sV3', 'StandardD4sV3', 'StandardD8sV3', 'StandardD16sV3', 'StandardD32sV3', 'StandardD64sV3', 'StandardD11V2', 'StandardD12V2', 'StandardD13V2', 'StandardD14V2', 'StandardD15V2', 'StandardDS1', 'StandardDS2', 'StandardDS3', 'StandardDS4', 'StandardDS11', 'StandardDS12', 'StandardDS13', 'StandardDS14', 'StandardDS1V2', 'StandardDS2V2', 'StandardDS3V2', 'StandardDS4V2', 'StandardDS5V2', 'StandardDS11V2', 'StandardDS12V2', 'StandardDS13V2', 'StandardDS14V2', 'StandardDS15V2', 'StandardDS134V2', 'StandardDS132V2', 'StandardDS148V2', 'StandardDS144V2', 'StandardE2V3', 'StandardE4V3', 'StandardE8V3', 'StandardE16V3', 'StandardE32V3', 'StandardE64V3', 'StandardE2sV3', 'StandardE4sV3', 'StandardE8sV3', 'StandardE16sV3', 'StandardE32sV3', 'StandardE64sV3', 'StandardE3216V3', 'StandardE328sV3', 'StandardE6432sV3', 'StandardE6416sV3', 'StandardF1', 'StandardF2', 'StandardF4', 'StandardF8', 'StandardF16', 'StandardF1s', 'StandardF2s', 'StandardF4s', 'StandardF8s', 'StandardF16s', 'StandardF2sV2', 'StandardF4sV2', 'StandardF8sV2', 'StandardF16sV2', 'StandardF32sV2', 'StandardF64sV2', 'StandardF72sV2', 'StandardG1', 'StandardG2', 'StandardG3', 'StandardG4', 'StandardG5', 'StandardGS1', 'StandardGS2', 'StandardGS3', 'StandardGS4', 'StandardGS5', 'StandardGS48', 'StandardGS44', 'StandardGS516', 'StandardGS58', 'StandardH8', 'StandardH16', 'StandardH8m', 'StandardH16m', 'StandardH16r', 'StandardH16mr', 'StandardL4s', 'StandardL8s', 'StandardL16s', 'StandardL32s', 'StandardM64s', 'StandardM64ms', 'StandardM128s', 'StandardM128ms', 'StandardM6432ms', 'StandardM6416ms', 'StandardM12864ms', 'StandardM12832ms', 'StandardNC6', 'StandardNC12', 'StandardNC24', 'StandardNC24r', 'StandardNC6sV2', 'StandardNC12sV2', 'StandardNC24sV2', 'StandardNC24rsV2', 'StandardNC6sV3', 'StandardNC12sV3', 'StandardNC24sV3', 'StandardNC24rsV3', 'StandardND6s', 'StandardND12s', 'StandardND24s', 'StandardND24rs', 'StandardNV6', 'StandardNV12', 'StandardNV24'|
|storage_profile|jsonb|Specifies the storage settings for the virtual machine disks|
|additional_capabilities_ultra_ssd_enabled|boolean|The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled|
|computer_name|text|Specifies the host OS name of the virtual machine|
|admin_username|text|Specifies the name of the administrator account <br><br> This property cannot be updated after the VM is created <br><br> **Windows-only restriction:** Cannot end in "" <br><br> **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5" <br><br> **Minimum-length (Linux):** 1  character <br><br> **Max-length (Linux):** 64 characters <br><br> **Max-length (Windows):** 20 characters  <br><br><li> For root access to the Linux VM, see [Using root privileges on Linux virtual machines in Azure](https://docsmicrosoftcom/azure/virtual-machines/virtual-machines-linux-use-root-privileges?toc=%2fazure%2fvirtual-machines%2flinux%2ftocjson)<br><li> For a list of built-in system users on Linux that should not be used in this field, see [Selecting User Names for Linux on Azure](https://docsmicrosoftcom/azure/virtual-machines/virtual-machines-linux-usernames?toc=%2fazure%2fvirtual-machines%2flinux%2ftocjson)|
|admin_password|text|Specifies the password of the administrator account <br><br> **Minimum-length (Windows):** 8 characters <br><br> **Minimum-length (Linux):** 6 characters <br><br> **Max-length (Windows):** 123 characters <br><br> **Max-length (Linux):** 72 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!" <br><br> For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docsmicrosoftcom/azure/virtual-machines/virtual-machines-windows-reset-rdp?toc=%2fazure%2fvirtual-machines%2fwindows%2ftocjson) <br><br> For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docsmicrosoftcom/azure/virtual-machines/virtual-machines-linux-using-vmaccess-extension?toc=%2fazure%2fvirtual-machines%2flinux%2ftocjson#reset-root-password)|
|custom_data|text|Specifies a base-64 encoded string of custom data The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine The maximum length of the binary array is 65535 bytes <br><br> **Note: Do not pass any secrets or passwords in customData property** <br><br> This property cannot be updated after the VM is created <br><br> customData is passed to the VM to be saved as a file, for more information see [Custom Data on Azure VMs](https://azuremicrosoftcom/en-us/blog/custom-data-and-cloud-init-on-windows-azure/) <br><br> For using cloud-init for your Linux VM, see [Using cloud-init to customize a Linux VM during creation](https://docsmicrosoftcom/azure/virtual-machines/virtual-machines-linux-using-cloud-init?toc=%2fazure%2fvirtual-machines%2flinux%2ftocjson)|
|windows_configuration_provision_vm_agent|boolean|Indicates whether virtual machine agent should be provisioned on the virtual machine <br><br> When this property is not specified in the request body, default behavior is to set it to true  This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later|
|windows_configuration_enable_automatic_updates|boolean|Indicates whether Automatic Updates is enabled for the Windows virtual machine Default value is true <br><br> For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning|
|windows_configuration_time_zone|text|Specifies the time zone of the virtual machine eg "Pacific Standard Time" <br><br> Possible values can be [TimeZoneInfoId](https://docsmicrosoftcom/en-us/dotnet/api/systemtimezoneinfoid?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfoGetSystemTimeZones](https://docsmicrosoftcom/en-us/dotnet/api/systemtimezoneinfogetsystemtimezones)|
|windows_configuration_additional_unattend_content|jsonb|Specifies additional base-64 encoded XML formatted information that can be included in the Unattendxml file, which is used by Windows Setup|
|windows_configuration_patch_settings_patch_mode|text|the property WindowsConfigurationenableAutomaticUpdates must be false<br /><br /> **AutomaticByOS** - The virtual machine will automatically be updated by the OS The property WindowsConfigurationenableAutomaticUpdates must be true <br /><br /> **AutomaticByPlatform** - the virtual machine will automatically updated by the platform The properties provisionVMAgent and WindowsConfigurationenableAutomaticUpdates must be true Possible values include: 'WindowsVMGuestPatchModeManual', 'WindowsVMGuestPatchModeAutomaticByOS', 'WindowsVMGuestPatchModeAutomaticByPlatform'|
|windows_configuration_patch_settings_enable_hotpatching|boolean|Enables customers to patch their Azure VMs without requiring a reboot For enableHotpatching, the 'provisionVMAgent' must be set to true and 'patchMode' must be set to 'AutomaticByPlatform'|
|linux_configuration_disable_password_authentication|boolean|Specifies whether password authentication should be disabled|
|linux_configuration_ssh_public_keys|jsonb|The list of SSH public keys used to authenticate with linux based VMs|
|linux_configuration_provision_vm_agent|boolean|Indicates whether virtual machine agent should be provisioned on the virtual machine <br><br> When this property is not specified in the request body, default behavior is to set it to true  This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later|
|linux_configuration_patch_settings_patch_mode|text|Specifies the mode of VM Guest Patching to IaaS virtual machine<br /><br /> Possible values are:<br /><br /> **ImageDefault** - The virtual machine's default patching configuration is used <br /><br /> **AutomaticByPlatform** - The virtual machine will be automatically updated by the platform The property provisionVMAgent must be true Possible values include: 'ImageDefault', 'AutomaticByPlatform'|
|allow_extension_operations|boolean|Specifies whether extension operations should be allowed on the virtual machine <br><br>This may only be set to False when no extensions are present on the virtual machine|
|require_guest_provision_signal|boolean|Specifies whether the guest provision signal is required to infer provision success of the virtual machine  **Note: This property is for private testing only, and all customers must not set the property to false**|
|network_profile_network_interfaces|jsonb|Specifies the list of resource Ids for the network interfaces associated with the virtual machine|
|security_profile_uefi_settings_secure_boot_enabled|boolean|Specifies whether secure boot should be enabled on the virtual machine <br><br>Minimum api-version: 2020-12-01|
|security_profile_uefi_settings_v_tpm_enabled|boolean|Specifies whether vTPM should be enabled on the virtual machine <br><br>Minimum api-version: 2020-12-01|
|security_profile_encryption_at_host|boolean|This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set This will enable the encryption for all the disks including Resource/Temp disk at host itself <br><br> Default: The Encryption at host will be disabled unless this property is set to true for the resource|
|security_profile_security_type|text|Specifies the SecurityType of the virtual machine It is set as TrustedLaunch to enable UefiSettings <br><br> Default: UefiSettings will not be enabled unless this property is set as TrustedLaunch Possible values include: 'SecurityTypesTrustedLaunch'|
|diagnostics_profile_boot_diagnostics_enabled|boolean|Whether boot diagnostics should be enabled on the Virtual Machine|
|diagnostics_profile_boot_diagnostics_storage_uri|text|Uri of the storage account to use for placing the console output and screenshot <br><br>If storageUri is not specified while enabling boot diagnostics, managed storage will be used|
|availability_set_id|text|Availability set id|
|virtual_machine_scale_set_id|text|Virtual machine scale set id|
|proximity_placement_group_id|text|Proximity placement group resource Id|
|priority|text|Specifies the priority for the virtual machine <br><br>Minimum api-version: 2019-03-01 Possible values include: 'Regular', 'Low', 'Spot'|
|eviction_policy|text|Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set <br><br>For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01 <br><br>For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview Possible values include: 'Deallocate', 'Delete'|
|billing_profile_max_price|float|Specifies the maximum price you are willing to pay for a Azure Spot VM/VMSS This price is in US Dollars <br><br> This price will be compared with the current Azure Spot price for the VM size Also, the prices are compared at the time of create/update of Azure Spot VM/VMSS and the operation will only succeed if  the maxPrice is greater than the current Azure Spot price <br><br> The maxPrice will also be used for evicting a Azure Spot VM/VMSS if the current Azure Spot price goes beyond the maxPrice after creation of VM/VMSS <br><br> Possible values are: <br><br> - Any decimal value greater than zero Example: 001538 <br><br> -1 – indicates default price to be up-to on-demand <br><br> You can set the maxPrice to -1 to indicate that the Azure Spot VM/VMSS should not be evicted for price reasons Also, the default max price is -1 if it is not provided by you <br><br>Minimum api-version: 2019-03-01|
|host_id|text|Host Id|
|host_group_id|text|Host group Id|
|provisioning_state|text|The provisioning state, which only appears in the response|
|instance_view|jsonb|The virtual machine instance view|
|license_type|text|Specifies that the image or disk that is being used was licensed on-premises <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docsmicrosoftcom/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docsmicrosoftcom/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15|
|vm_id|text|Specifies the VM unique ID which is a 128-bits identifier that is encoded and stored in all Azure IaaS VMs SMBIOS and can be read using platform BIOS commands|
|extensions_time_budget|text|Specifies the time alloted for all extensions to start The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format The default value is 90 minutes (PT1H30M) <br><br> Minimum api-version: 2020-06-01|
|platform_fault_domain|integer|Specifies the scale set logical fault domain into which the Virtual Machine will be created.|
|identity_principal_id|text|The principal id of virtual machine identity This property will only be provided for a system assigned identity|
|identity_tenant_id|text|The tenant id associated with the virtual machine This property will only be provided for a system assigned identity|
|identity_type|text|The type of identity used for the virtual machine The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities The type 'None' will remove any identities from the virtual machine Possible values include: 'ResourceIdentityTypeSystemAssigned', 'ResourceIdentityTypeUserAssigned', 'ResourceIdentityTypeSystemAssignedUserAssigned', 'ResourceIdentityTypeNone'|
|identity_user_assigned_identities|jsonb|The list of user identities associated with the Virtual Machine The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/MicrosoftManagedIdentity/userAssignedIdentities/{identityName}'|
|zones|text[]|The virtual machine zones|
|extended_location_name|text|The name of the extended location|
|extended_location_type|text|The type of the extended location Possible values include: 'EdgeZone'|
|id|text|Resource Id|
|name|text|Resource name|
|type|text|Resource type|
|location|text|Resource location|
|tags|jsonb|Resource tags|