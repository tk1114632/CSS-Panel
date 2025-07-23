#!/bin/bash

echo "=== 清理之前的构建 ==="
rm -rf .next build

echo "=== 开始构建 ==="
npm run build

echo "=== 检查构建输出 ==="
echo "检查.next目录:"
ls -la .next/ 2>/dev/null || echo ".next目录不存在"

echo "检查.next/static目录:"
ls -la .next/static/ 2>/dev/null || echo ".next/static目录不存在"

echo "检查CSS文件:"
find .next -name "*.css" -type f 2>/dev/null || echo "没有找到CSS文件"

echo "检查standalone目录:"
ls -la .next/standalone/ 2>/dev/null || echo ".next/standalone目录不存在"

echo "=== 构建完成 ===" 