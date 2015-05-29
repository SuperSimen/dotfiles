#! /bin/runghc

main = interact parseInput

parseInput = unlines . init . lines
