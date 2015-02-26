# chef-client-runit

This cookbook handles setting up `chef-client` to run as a service supervised by [runit](http://smarden.org/runit/).

## Motivation

I wanted something more simple for my purposes of running chef-client as a service than the excellent [chef-client](https://supermarket.chef.io/cookbooks/chef-client) cookbook. I don't need the various extra features of that cookbook, I just need to get chef-client under runit.

It is not in scope to:

- Configure chef client `/etc/chef/client.rb`
- Perform log rotation (runit does that automatically)
- Support cron
- Support every platform
- Support every use case

Reasonable effort was made to ensure flexibility for the startup options.

## Requirements

This cookbook requires Chef 12 or later.

### Platforms

- Ubuntu 12.04, 14.04
- Fedora 21
- CentOS 6.6, 7.0

It should just work on any platform that the [runit cookbook](https://supermarket.chef.io/cookbooks/runit) supports.

### Cookbooks

- runit

### Attributes

This cookbook uses the `chef_client` attribute namespace so that existing attributes can be reused without fuss.

Attribute | Description | Type | Default
----------|-------------|------|--------
interval  | Interval for when the chef-client process should wake up, passed to `-i`. | String | 1800
splay     | Random number of seconds to add to the interval, passed to `-s`. | String | 300
locale    | Optionally set the locale. | String | nil
daemon_options | Array of command-line options to pass to `chef-client`. | Array | []

### Usage

Put `recipe[chef-client-runit]` on your node's role or run list.

## License and Author

- Author: Joshua Timberman <opensource@housepub.org>
- Copyright (c) 2015, Joshua Timberman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
