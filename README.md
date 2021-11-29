# Reusable Workflows

The workflows contained in this directory are re-usable and primarily
meant to be used by SagaRobotics internal developers. The repository
is public due to constraints caused by 
[GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/reusing-workflows#limitations):
> Reusable workflows stored within a private repository can only be 
> used by workflows within the same repository.

A ROS package is assumed to have the following format:
```
my-ros-package/
|
+---- package.xml
      CMakeLists.xml
      src/
      |
      +---- main/
      |     |
      |     +---- file-1.cpp
      |           file-2.cpp
      +---- test/...
```
The following repo-structures have reusable workflows defined in this
repository:

- Release all:  
  All packagages contained in the repository are released at the same time
  because of strong connections between them.  
  Repo structure:
  ```
  my-repository
  |
  +---- package1/...
        package2/...
        README.md
  ```
- Release specific package:  
  A single package is built and released. This is used if the packages are
  contained in a monorepo-structure, but some packages are ready to be 
  released before others are.
- Release single:  
  A workflow that supports releasing repositories that contain a single 
  package have also been created.
