
1. **Fast-forward**: Imagine you're reading a book, and you put a bookmark where you stopped. When you come back, you continue from the bookmark, that's a fast-forward. In Git, if you have a branch `B` that is ahead of `A`, and you want to update `A` with `B`'s commits, Git will just move `A`'s pointer to `B`. This is a fast-forward merge.

2. **Merge**: Now, imagine you're reading two different books. You want to combine the information. You take notes from both and create a new set of notes. That's a merge. In Git, if you have two branches `A` and `B` that have diverged, and you want to combine their changes, Git creates a new commit that includes changes from both `A` and `B`.

3. **Rebase**: Think of it as rewriting history. You're reading a book, but you find some chapters should have come before others. So, you rearrange the chapters. That's a rebase. In Git, if you have a branch `B` that is based on `A`, and `A` has new commits, you can "rebase" `B` onto `A`. This takes your changes in `B`, temporarily removes them, applies `A`'s new commits, then re-applies your changes on top of that.

Remember:
- **Fast-forward** is like moving forward in time.
- **Merge** is like combining two sets of changes.
- **Rebase** is like rearranging the order of changes.



1. **Fast-forward merge**:

```bash
# Switch to the branch you want to update
git checkout A

# Merge the other branch into your current branch (fast-forward if possible)
git merge B
```

2. **Merge**:

```bash
# Switch to the branch you want to merge into
git checkout A

# Merge the other branch into your current branch (creates a new commit)
git merge B
```

3. **Rebase**:

```bash
# Switch to the branch you want to rebase
git checkout B

# Rebase the current branch onto another branch
git rebase A
```

In these examples, `A` is the branch that you want to update or merge into, and `B` is the branch that contains the new commits.

Remember to replace `A` and `B` with your actual branch names. Also, keep in mind that merging and rebasing can lead to conflicts if the same parts of the code have been modified in both branches. You'll need to resolve these conflicts manually.