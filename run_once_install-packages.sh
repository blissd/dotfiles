#!/bin/sh

if command -v curl &> /dev/null; then
	sh -c "$(curl -fsSL https://git.io/zinit-install)"
elif command -v wget &> /dev/null; then
	sh -c "$(wget -q -O - https://git.io/zinit-install)"
fi

