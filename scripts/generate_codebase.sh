
#!/usr/bin/env bash

ignore_files=".git|scripts|README.md|template_config.yaml|node_modules|build|okta-oidc-ios"

for input_file in `tree -I "${ignore_files}" -Ffai --noreport`
do
  if [ ! -d "${input_file}" ]; then
    echo "Processing file: ${input_file}"
    gomplate \
         -f "${input_file}" \
         -o "${input_file}" \
         --left-delim "<<[" \
         --right-delim "]>>" \
         -c config=./template_config.yaml
  fi
done

package_name=`grep 'package_name' template_config.yaml | awk -F ': ' '{ print $2 }'`

# Move directories
for source in `find . -type d -name "*rnremoteapp2*"`; do
  destination=`echo $source | sed -e "s|rnremoteapp2|${package_name}|g"`
  echo "$source -> $destination"
  mv $source $destination
done
echo "-----"
# Move files
for source in `find . -type f -name "*rnremoteapp2*"`; do
  destination=`echo $source | sed -e "s|rnremoteapp2|${package_name}|g"`
  echo "$source -> $destination"
  mv $source $destination
done

# Clean up / implode
rm README.md
mv README_PROJECT.md README.md
mv .github/workflows/github-actions-final.txt .github/workflows/github-actions.yml
rm template_config.yaml
rm -rf scripts