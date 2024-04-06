## An exemplary .NET / C# repository

### [StudioLE.Example.Core](StudioLE.Example.Core/src)

An exemplary library project.

### [StudioLE.Example.Core.Tests](StudioLE.Example.Core/tests)

An exemplary library of tests.

### [StudioLE.Example.Cli](StudioLE.Example.Cli/src)

An exemplary executable implementation.

### Project structure

- Project structure based on [David Fowler's best practice](https://gist.github.com/davidfowl/ed7564297c61fe9ab814).
- Standardized build properties: [`Global.props`](Global.props).

### Distribution

- NuGet packages published to GitHub Packages and NuGet.org
- Executables published to GitHub Releases
- Executables installable via `dotnet tool install --global StudioLE.Example --prerelease`

### Testing

- Fully unit tested with NUnit.
- Tests can be executed with `dotnet test`.
- Code coverage with Coverlet.
- Test execution with GitHub Actions.
- Tests are written simultaneously with the code.
- [StudioLE.Verify](https://github.com/StudioLE/Verify/) is used for rapid test development. Ensuring consistent output and instant visibility of breaking changes.

### Version Control

- Commit messages follow the [Conventional Commits](https://www.conventionalcommits.org) standard.
- Feature development branch names: `wip/<YYYY>/<MM>/[#<issue-number>-]feat-<name>`.
- Fix development branch names: `wip/<YYYY>/<MM>/[#<issue-number>-]fix-<name>`.
- `alpha` branch for Staging environment CI/CD.
- `main` branch for Production environment CI/CD.
- Commits must be [signed with GPG](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits).

### Code standards

- Consistent [EditorConfig](https://editorconfig.org/) code style defined in [.editorconfig](.editorconfig) based on the .NET standards.
- Formatting can be executed with `dotnet format`.
- Tiered code review
  - *Relaxed* for `alpha` branch and staging environment, to enable lean development
  - *Strict* for `main` branch and production environment.

### Documentation

- `xml-doc` comments for all public members.
- Library documentation published with Illuminate.

### Cross platform

- Linux first development using the latest .NET long term support version.
- Cross platform support ensured with CI/CD workflows.

### CI/CD workflow

- Fully automated with GitHub Actions: [`.github/workflows/ci-cd.yml`](.github/workflows/ci-cd.yml).
- Build and test execution: [`.github/workflows/01-test.yml`](.github/workflows/01-test.yml).
- Automatic versioning following Semantic Versioning 2.0.0 specification with [Surveyor](https://github.com/StudioLE/Surveyor): [`.github/workflows/02-release.yml`](.github/workflows/02-release.yml).
- NuGets pushed to GitHub Packages and NuGet.org: [`.github/workflows/03-push.yml`](.github/workflows/03-push.yml).
- Executable published to GitHub Releases: [`.github/workflows/04-publish.yml`](.github/workflows/04-publish.yml).
- GitHub deployment environments: [`.github/workflows/ci-cd.yml`](.github/workflows/ci-cd.yml).

## License

This repository and its libraries are provided open source with the [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.en.html) license that requires you must disclose your source code when you distribute, publish, or provide access to modified or derivative software.

Developers who wish to keep modified or derivative software proprietary or closed source can [get in touch for a commercial license agreements](https://studiole.uk/contact/)

---

Copyright © Laurence Elsdon 2024

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

---

→ [GNU Affero General Public License](LICENSE.md)
