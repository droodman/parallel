* not comprehensive! Use test_all.do
include setup_ado.do
sysuse auto, clear
parallel setclusters 2
parallel, by(foreign) f keepl nog : egen maxp = max(price)
