#!/bin/bash

# Création du fichier header
cat << EOF > binary_trees.h
#ifndef BINARY_TREES_H
#define BINARY_TREES_H

#include <stddef.h>

/**
 * struct binary_tree_s - Binary tree node
 *
 * @n: Integer stored in the node
 * @parent: Pointer to the parent node
 * @left: Pointer to the left child node
 * @right: Pointer to the right child node
 */
struct binary_tree_s
{
    int n;
    struct binary_tree_s *parent;
    struct binary_tree_s *left;
    struct binary_tree_s *right;
};

typedef struct binary_tree_s binary_tree_t;

void binary_tree_print(const binary_tree_t *);
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
size_t binary_tree_size(const binary_tree_t *tree);
size_t binary_tree_leaves(const binary_tree_t *tree);
size_t binary_tree_nodes(const binary_tree_t *tree);
int binary_tree_balance(const binary_tree_t *tree);
int binary_tree_is_full(const binary_tree_t *tree);
int binary_tree_is_perfect(const binary_tree_t *tree);
binary_tree_t *binary_tree_sibling(binary_tree_t *node);
binary_tree_t *binary_tree_uncle(binary_tree_t *node);

#endif /* BINARY_TREES_H */
EOF

# Création des fichiers source
for i in {0..17}
do
    case $i in
        0) func="binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)"
           comment="Create a binary tree node";;
        1) func="binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value)"
           comment="Insert a node as the left-child of another node";;
        2) func="binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)"
           comment="Insert a node as the right-child of another node";;
        3) func="void binary_tree_delete(binary_tree_t *tree)"
           comment="Delete an entire binary tree";;
        4) func="int binary_tree_is_leaf(const binary_tree_t *node)"
           comment="Check if a node is a leaf";;
        5) func="int binary_tree_is_root(const binary_tree_t *node)"
           comment="Check if a given node is a root";;
        6) func="void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int))"
           comment="Go through a binary tree using pre-order traversal";;
        7) func="void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int))"
           comment="Go through a binary tree using in-order traversal";;
        8) func="void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int))"
           comment="Go through a binary tree using post-order traversal";;
        9) func="size_t binary_tree_height(const binary_tree_t *tree)"
           comment="Measure the height of a binary tree";;
        10) func="size_t binary_tree_depth(const binary_tree_t *tree)"
            comment="Measure the depth of a node in a binary tree";;
        11) func="size_t binary_tree_size(const binary_tree_t *tree)"
            comment="Measure the size of a binary tree";;
        12) func="size_t binary_tree_leaves(const binary_tree_t *tree)"
            comment="Count the leaves in a binary tree";;
        13) func="size_t binary_tree_nodes(const binary_tree_t *tree)"
            comment="Count the nodes with at least 1 child in a binary tree";;
        14) func="int binary_tree_balance(const binary_tree_t *tree)"
            comment="Measure the balance factor of a binary tree";;
        15) func="int binary_tree_is_full(const binary_tree_t *tree)"
            comment="Check if a binary tree is full";;
        16) func="int binary_tree_is_perfect(const binary_tree_t *tree)"
            comment="Check if a binary tree is perfect";;
        17) func="binary_tree_t *binary_tree_sibling(binary_tree_t *node)"
            comment="Find the sibling of a node";;
    esac

    cat << EOF > ${i}-${func%% *}.c
#include "binary_trees.h"

/**
 * ${func%% *} - $comment
 *
 * @param: TODO
 * Return: TODO
 */
$func
{
    /* TODO: Implement function */
    return (NULL);
}
EOF

    # Création des fichiers main correspondants
    cat << EOF > ${i}-main.c
#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    /* TODO: Implement main function */
    return (0);
}
EOF
done

echo "Fichiers créés avec succès!"