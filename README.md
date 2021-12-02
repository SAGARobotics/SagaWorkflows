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

## Defined Workflows
To use any of the pre-defined workflows please refer to the corresponding
heading:

### Release
This workflow is intended to release a complete repo, or ROS pacakges contained
in it. If you have a repository that contains multiple packages, the `packages` 
variable can be used to specify which packages to release, by supplying a 
stringified json-list 
