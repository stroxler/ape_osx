set -e

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd "$dir"

for file in $(echo *.sh | sort); do
  echo "****************************************"
  echo "running setup file $file"
  echo "****************************************"
  ./$file
done
