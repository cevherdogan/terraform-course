terraform graph | dot -Tsvg > graph-dot.svg
terraform graph -type=plan | dot -Tpng -o graph-plan.png
open graph-dot.svg graph-plan.png

