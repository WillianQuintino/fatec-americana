#####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####

### Shell script to download Oracle JDK / JRE / Java binaries from Oracle website using terminal / command / shell prompt using wget.
### You can download all the binaries one-shot by just giving the BASE_URL.
### Script might be useful if you need Oracle JDK on Amazon EC2 env.
### Script is updated for every JDK release.

### Features:-
# 1. Resumes a broken / interrupted [previous] download, if any.
# 2. Renames the file to a proper name with including platform info.
# 3. Downloads the following from Oracle Website with one shell invocation.
#    a. Windows 64 and 32 bit;
#    b. Linux 64 and 32 bit;
#    c. API Docs;
#    d. You can add more to the list of downloads are per your requirement.

#####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####   #####


## Latest JDK10 version is JDK21.
BASE_URL_10=https://download.oracle.com/java/21/latest/jdk-21_

declare -a PLATFORMS=("linux-x64_bin.tar.gz" "windows-x64_bin.exe" "doc-all.zip")
# declare -a PLATFORMS=("linux-x64_bin.rpm" "linux-x64_bin.tar.gz" "osx-x64_bin.dmg" "windows-x64_bin.exe" "solaris-sparcv9_bin.tar.gz" "doc-all.zip")

for platform in "${PLATFORMS[@]}"
do
    # wget -c --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_9}${platform}"
    curl -C - -LR#OH "Cookie: oraclelicense=accept-securebackup-cookie" -k "${BASE_URL_10}${platform}"
done
