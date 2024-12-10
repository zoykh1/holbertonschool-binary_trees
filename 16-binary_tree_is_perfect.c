#include "binary_trees.h"

/**
 * binary_tree_height - Measures the height of a binary tree.
 * @tree: Pointer to the root node of the tree to measure the height.
 *
 * Return: The height of the tree. If the tree is NULL, return -1.
 */
int binary_tree_height(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (-1);

	int left_height = binary_tree_height(tree->left);
	int right_height = binary_tree_height(tree->right);

	return ((left_height > right_height ? left_height : right_height) + 1);
}

/**
 * is_perfect_helper - Helper function to check if the tree is perfect.
 * @tree: Pointer to the node to check.
 * @depth: The expected depth of the tree.
 * @level: The current level of the node.
 *
 * Return: 1 if the tree is perfect, 0 otherwise.
 */
int is_perfect_helper(const binary_tree_t *tree, int depth, int level)
{
	if (tree == NULL)
		return (1);

	if (tree->left == NULL && tree->right == NULL)
		return (depth == level + 1);

	if (tree->left == NULL || tree->right == NULL)
		return (0);

	return (is_perfect_helper(tree->left, depth, level + 1) &&
			is_perfect_helper(tree->right, depth, level + 1));
}

/**
 * binary_tree_is_perfect - Checks if a binary tree is perfect.
 * @tree: Pointer to the root node of the tree to check.
 *
 * Return: 1 if the tree is perfect, 0 otherwise.
 */
int binary_tree_is_perfect(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);

	int depth = binary_tree_height(tree);

	return (is_perfect_helper(tree, depth, 0));
}
