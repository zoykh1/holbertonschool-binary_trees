#include "binary_trees.h"

/**
 * height - Computes the height of a binary tree.
 * @tree: A pointer to the root node of the tree.
 *
 * Return: The height of the tree.
 */
int height(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);
	return (1 + (max(height(tree->left), height(tree->right))));
}

/**
 * max - Returns the maximum of two integers.
 * @a: The first integer.
 * @b: The second integer.
 *
 * Return: The maximum of a and b.
 */
int max(int a, int b)
{
	return ((a > b) ? a : b);
}

/**
 * binary_tree_balance - Measures the balance factor of a binary tree.
 * @tree: A pointer to the root node of the tree.
 *
 * Return: The balance factor of the tree.
 *         0 if tree is NULL.
 */
int binary_tree_balance(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);

	int left_height = height(tree->left);
	int right_height = height(tree->right);

	return (left_height - right_height);
}
