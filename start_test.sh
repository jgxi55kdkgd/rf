PATH=/home/pwuser/.local/bin:$PATH
export PATH

rm -f CRM/Results/*
xvfb-run robot -d CRM/Results CRM
