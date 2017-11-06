cd /home/jpmvjvmh/public_html/WCS_Arome/
date
tail -15000 resultPrevi > tempo
cat tempo > resultPrevi
rm tempo
resol=$1  # la résolution ("0025" ou "001") est passée en premier paramètre
fichcoverageIDLabels=$2 # le nom du fichier des coverageIDLabel en second
bash fabriqueLesCoverageIDLabels.sh $resol $fichcoverageIDLabels
java_path="/opt/jdk1.8.0_05/jre/bin/"
${java_path}java TraiteLesCoverageIDLabels $resol $fichcoverageIDLabels /home/jpmvjvmh/public_html/WCS_Arome/
date