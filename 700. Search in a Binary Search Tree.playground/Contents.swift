import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

//     4
//    / \
//   2   7
//  / \
// 1   3
let firstNode = TreeNode(1)
let thirdNode = TreeNode(3)
let secondNode = TreeNode(2, firstNode, thirdNode)

let seventhNode = TreeNode(7)

let headNode = TreeNode(4, secondNode, seventhNode)

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    if root == nil {
        return nil
    }
    if root?.val == val {
        return root
    } else if val < root!.val {
        return searchBST(root?.left, val)
    } else {
        return searchBST(root?.right, val)
    }
}

let node = searchBST(headNode, 2)
print(node?.left?.val)
