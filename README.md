# Terraform AWS IAM Module

This module contains a collection of modules for creating IAM resources.

These include

* [Policy and Role](./policy-and-role/README.md) - Creates both an IAM policy and IAM role, and attaches the policy to role.
* [Policy to Group](./policy-to-group/README.md) - Creates an IAM policy and group and created the attachment between them.
* [Policy to Role](./policy-to-role/README.md) - Creates an IAM policy and attaches it with an existing Role.
* [User to Group](./user-to-group/README.md) - Creates an IAM user and adds user to a list of groups.
* [Managed Role](./managed-role/README.md) - Creates an IAM role and attaches the policy to it.
* [Identity-Provider](./identity-provider/README.md) - Creates an IAM identidy provider for open id connect provider.

## ADR's

This module includes an Architectural Decision Register (ADR's) as represented by [the first adr](docs/adr/0001-record-architecture-decisions.md). All ADR's are listed [here](docs/adr/toc.md).

## Terraform version support
This repo supports version 0.11 and 0.12 of Terraform. The implementation pattern is outlined in the following ADR [Dual support for Terraform version 0.11 and 0.12](docs/adr/0003-dual-support-for-terraform-version-0-11-and-0-12.md)

## Contributions
All contributions are accepted, details on how to contribute can be found in [contrib.md](contrib.md).

---

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

```
Copyright 2019 Hypr NZ

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

Copyright &copy; 2019 [Hypr NZ](https://www.hypr.nz/)