class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

bool isSameTree(TreeNode? p, TreeNode? q) {
  if (p == null && q == null) return true;
  if (p == null || q == null) return false;
  if (p.val != q.val) return false;

  return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
}

void main() {
  TreeNode p1 = TreeNode(1, TreeNode(2), TreeNode(3));
  TreeNode q1 = TreeNode(1, TreeNode(2), TreeNode(3));
  print(isSameTree(p1, q1));

  TreeNode p2 = TreeNode(1, TreeNode(2), null);
  TreeNode q2 = TreeNode(1, null, TreeNode(2));
  print(isSameTree(p2, q2));

  TreeNode p3 = TreeNode(1, TreeNode(2), TreeNode(1));
  TreeNode q3 = TreeNode(1, TreeNode(1), TreeNode(2));
  print(isSameTree(p3, q3));
}
