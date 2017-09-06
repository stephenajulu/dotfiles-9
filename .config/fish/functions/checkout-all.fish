function checkout-all -d "Recursively checkout git repos"
  set -lx cwd (pwd)
  for i in (find . -type d -name ".git")
    cd (dirname "$i")
    git checkout "$argv"
    cd "$cwd"
  end
end
