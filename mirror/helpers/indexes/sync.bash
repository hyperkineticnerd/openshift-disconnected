indexes="certified redhat community"
versions="v4.14 v4.16"

for index in $indexes;do
    for version in $versions; do
        oc mirror list operators --catalog registry.redhat.io/redhat/$index-operator-index:$version | tee $index-$version.txt
    done
done
