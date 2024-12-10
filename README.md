<img align="center" width="35%" src="https://cdn.prod.website-files.com/64107f65f30b69371e3d6bfa/65c6179aa44b63fa4f31e7ad_Holberton-Logo-Cherry.svg">

# Project Binary Trees C25

## Summary

<img align="right" width="35%" src="https://owlbertsio-resized.s3.amazonaws.com/Popper.psd.full.png">

- [Description](#Description)
- [Fonction prototype](#Function-prototype)
- [Compilation](#Compilation)
- [Requirement](#Requirement)
- [Exemples](#Exemples)
- [Authors](#Authors)

## Description

This project involves the implementation and manipulation of binary trees in C. 
It covers various functionalities such as creating nodes, inserting and deleting nodes, 
and performing different types of tree traversals.

## Function Prototypes
```c
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value);
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value);
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value);
void binary_tree_delete(binary_tree_t *tree);
int binary_tree_is_leaf(const binary_tree_t *node);
int binary_tree_is_root(const binary_tree_t *node);
void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int));
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int));
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int));
size_t binary_tree_height(const binary_tree_t *tree);
size_t binary_tree_depth(const binary_tree_t *tree);
```

## Compilation
To compile the project, use the following command:
```bash
gcc -Wall -Wextra -Werror -pedantic -std=gnu89 *.c -o binary_trees
```
## Requirement
```markdown
C programming language
Standard libraries for memory allocation and I/O operations
```
# Exemples
Here are some examples demonstrating how to use the functions:

## Creating a Binary Tree Node
```c
binary_tree_t *root = binary_tree_node(NULL, 98);
```
## Inserting Nodes
```c
binary_tree_insert_left(root, 12);
binary_tree_insert_right(root, 402);
```
## Deleting a Binary Tree
```c```
binary_tree_delete(root);
```
## Checking if a Node is a Leaf
```c
int is_leaf = binary_tree_is_leaf(root)
```
## Traversing the Tree
```c
void print_num(int n) { printf("%d\n", n); }
binary_tree_preorder(root, &print_num)
```
.SH AUTHOR
[Ahmet(Zoy - Enzo)]


## Authors
[@Zoy](https://github.com/zoykh1)
