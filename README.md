# Terraform AWS IAM Module

This module contains a collection of modules for creating IAM resources.

These include

* [User-Group](./user-group/README.md) - Creates an IAM user and adds user to a list of groups.
* [Policy-Group](./group-policy/README.md) - Creates an IAM policy and group and created the attachment between them.
* [Role-Policy](./role-policy/README.md) - Creates an IAM policy and attaches it with an existing Role.

## ADR's

This module includes an Architectural Decision Register (ADR's) as represented by [the first adr](docs/adr/0001-record-architecture-decisions.md). All ADR's are listed [here](docs/adr/toc.md).

## Terraform version support
This repo supports version 0.11 and 0.12 of Terraform. The implementation pattern is outlined in the following ADR [4. Dual support for Terraform version 0.11 and 0.12](docs/adr/0004-dual-support-for-terraform-version-0-11-and-0-12.md)

## Contributions
All contributions are accepted, details on how to contribute can be found in [contrib.md](contrib.md).

---