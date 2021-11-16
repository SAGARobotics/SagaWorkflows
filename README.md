# Reusable Workflows

The workflows contained in this directory are re-usable. Unfortunatley, to 
use one of the workflows it must be *copied* into the `.github/workflows` 
directory where you intend to use it. 
[Reference](https://docs.github.com/en/actions/learn-github-actions/reusing-workflows#limitations)
> Reusable workflows stored within a private repository can only be used by workflows within the same repository.

The workflows contained here are therefore mostly for reference, and if 
you use them, they must be kept up to date manually.

You could always use the provided update script `update.sh`, which you 
should run from the base of your repository, i.e.:
```bash
cd /path/to/my/repo && ./.github/SagaActions/workflows/update.sh
```
