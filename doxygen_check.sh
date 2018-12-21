#!/bin/bash
doxygen .doxygen.txt |
  if [[ -s doxygen_warnings.txt ]]; then
    echo "You must fix doxygen before submitting a pull request"
    echo ""
    cat doxygen_warnings.txt
    exit -1
  fi
