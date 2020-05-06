#!/bin/bash

set -e

company="n13org"
dockerfile="Dockerfile"

# Get the path of the current script
base="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if the sh-scripted was called with the right amount of parameters
if [[ $# -ne 3 ]]; then
    echo "ERROR: You must set a 'project', 'version' and 'isLatest'"
    echo "${BASH_SOURCE[0]} <project> <version> <isLatest>"
    exit 1
fi

# Store the parameters as named variables
project=$1
version=$2
isLatest=$3

# Get the version from the Dockerfile
dockerfile_version=$(grep PKG_VERSION= ${base}/${project}/${dockerfile} | cut -d= -f2)

# Echo the values (debugging)
echo "############################# #"
echo "Path of current script        : ${base}"               # Variable
echo "Script                        : ${BASH_SOURCE[0]}"     # Arg $0
echo "Company                       : ${company}"            # Constant
echo "Project                       : ${project}"            # Arg $1
echo "Version                       : ${version}"            # Arg $2
echo "Should image tagged as latest : ${isLatest}"           # Arg $3
echo "Version from Dockerfile       : ${dockerfile_version}" # Variable
echo "############################# #"

# # Check if versions are matching (parameter and docker file)
# if [[ "${version}" != "${dockerfile_version}" ]]; then
#     echo "ERROR: Versions do not match! Make sure the versions are correct."
#     echo "In file ${base}/${project}/${dockerfile} found ${dockerfile_version}, but expected '${version}'."
#     exit 1
# fi

# Build image and tag it with version and/or with latest
echo "Start building docker images for ${project} ${version} and tag with 'latest' ..."
docker build -f "${base}/${project}/${dockerfile}" -t ${company}/${project}
docker tag ${company}/${project} ${company}/${project}:${version}
if [[ ${isLatest} ]]; then
    docker tag ${company}/${project} ${company}/${project}:latest
fi

## Upload image to registry
# echo "Start uploading docker images for ${project} ${version} to registry ..."
# docker push ${company}/${project}:${version}
# docker push ${company}/${project}:latest