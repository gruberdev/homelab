# Unifi-related internal documentation

## How to reset older devices to a new self-hosted controller

 **Example**:

 > I have to configure my underlying Unifi-based network using a Terraform provider. However if these devices are attached to a controller you have lost access to, and for some reason you don't have a backup, you will need to reset them to a new controller.

The steps described below can be repeated for every Unifi device. However, to ensure you won't lose connectivity on your already existing network, the order of which part of is reset matters.

> 1. Reset the firewall (USG4/UDM Pro, etc.)
> 2. Adopt the firewall on the controller using SSH
> 3. Reset network switches
> 4. Adopt the switch as well.
> 5. Reset APs (Access Points)
> 6. Same thing as step 4 and 2.

To reset the device, every one of them has a place where it restores default factory mode. Once it has been reset, you can connect to it as:

```sh
ssh ubnt@ip_address
```

It is important to note the default combination of user and password is either `admin/ubnt` or `ubnt/ubnt`

If you still have access to the old SSH password you configured on the controller you're replacing, you can reset the device configuration through the terminal using:

```sh
sudo syswrapper.sh restore-default
```

Once it is reset, SSH into the newly configured machine and execute the following command:

```sh
set-inform http://ip_address_controller:http_port/inform
# example
set-inform http://192.168.1.2:8080/inform
# or
set-inform http://192.168.1.10:32322/inform
```
If the controller IP' s device would be `192.168.1.2` on port `8080`. Remember this is the **controller's** IP, not the network gateway IP.

Now it should appear on the controller's device list, where you can adopt it to your new Ubiquiti site.

---

## How to configure the network infrastructure using Terraform

> **Important**: You must have to manually reset and import an Unifi AP of any kind in order to create [`unifi_ap_group` datasources](https://registry.terraform.io/providers/paultyng/unifi/latest/docs/data-sources/ap_group), as this resource only gets created when there active APs in the network, and it is a requirement to set any WLAN-related configuration.

1. Initialize the Terraform module with a local or remote backend
2. Fill `terraform.tfvars`
3. Run `terraform init`
4. If it is your first time running the provider, you will have to import the existing `Default` controller that is created when the container is first initialized.

If you only have one site to manage, the command should look like this:

```sh
terraform import unifi_network.default name=default
```

If you receive the following error:

```sh
Error: Resource already managed by Terraform
│
│ Terraform is already managing a remote object for unifi_site.default. To import to this address you must first remove the existing object from the state.
```

It means you should delete the previous state and repeat the previous step again to import it again.

```sh
terraform state rm unifi_site.default
```

