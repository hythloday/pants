
__comp()
{
  local c i=0
  for c in $(compgen -W "${1}" -- ${cur}); do
    case $c in
      --*=*|*.) ;;
      *) c="$c " ;;
    esac
    COMPREPLY[i++]="$c"
  done
}

_pants ()
{
  local cur prev

  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  case "$prev" in
    pants)
      __comp "goal"
      ;;
    goal)
      local opts="autoblame binary bootstrap bundle changed check-exclusives deps clean-all clean-all-async compile dependees owners dependencies depmap detect-duplicates doc eclipse ensime filedeps filemap filter gen goals idea invalidate killserver list markdown minimize ng-killall path pathdeps paths provides publish repl repl-dirty resolve roots run run-dirty server sort targets test thrift-linter"
      __comp "${opts}"
      ;;


    autoblame)
      local opts='--autoblame-sep= --autoblame-output-file= '
      __comp "$opts"
      ;;

    binary)
      local opts='--binary-dup-fail-fast --no-binary-dup-fail-fast --binary-dup-excludes= --binary-dup-max-dups= --binary-python-binary-create-timeout= '
      __comp "$opts"
      ;;

    bootstrap)
      local opts=''
      __comp "$opts"
      ;;

    bundle)
      local opts='--bundle-deployjar --no-bundle-deployjar --bundle-archive= --bundle-archive-prefix --archive --no-bundle-archive-prefix --bundle-dup-fail-fast --no-bundle-dup-fail-fast --bundle-dup-excludes= --bundle-dup-max-dups= --bundle-apk-sdk-path= --bundle-apk-target-sdk= --bundle-apk-build-tools-version= --bundle-apk-ignored-assets= '
      __comp "$opts"
      ;;

    changed)
      local opts='--changed-sep= --changed-output-file= --changed-parent= --changed-files --no-changed-files '
      __comp "$opts"
      ;;

    check-exclusives)
      local opts='--check-exclusives-error-on-collision --no-check-exclusives-error-on-collision '
      __comp "$opts"
      ;;

    clean-all-async)
      local opts='--clean-all-async-ng-killall-everywhere --no-clean-all-async-ng-killall-everywhere '
      __comp "$opts"
      ;;

    clean-all)
      local opts='--clean-all-ng-killall-everywhere --no-clean-all-ng-killall-everywhere '
      __comp "$opts"
      ;;

    compile)
      local opts='--compile-checkstyle-skip --no-compile-checkstyle-skip --compile-scala-partition-size-hint= --compile-scala-warnings --no-compile-scala-warnings --compile-scala-missing-deps= --compile-scala-missing-direct-deps= --compile-scala-unnecessary-deps= --compile-scala-delete-scratch --no-compile-scala-delete-scratch --compile-scala-plugins= --compile-apt-partition-size-hint= --compile-apt-warnings --no-compile-apt-warnings --compile-apt-missing-deps= --compile-apt-missing-direct-deps= --compile-apt-unnecessary-deps= --compile-apt-delete-scratch --no-compile-apt-delete-scratch --compile-apt-args= --compile-java-partition-size-hint= --compile-java-warnings --no-compile-java-warnings --compile-java-missing-deps= --compile-java-missing-direct-deps= --compile-java-unnecessary-deps= --compile-java-delete-scratch --no-compile-java-delete-scratch --compile-java-args= '
      __comp "$opts"
      ;;

    dependees)
      local opts='--dependees-sep= --dependees-output-file= --dependees-transitive --no-dependees-transitive --dependees-closed --no-dependees-closed --dependees-type= '
      __comp "$opts"
      ;;

    dependencies)
      local opts='--dependencies-sep= --dependencies-output-file= --dependencies-internal-only --no-dependencies-internal-only --dependencies-external-only --no-dependencies-external-only '
      __comp "$opts"
      ;;

    depmap)
      local opts='--depmap-sep= --depmap-output-file= --depmap-internal-only --no-depmap-internal-only --depmap-external-only --no-depmap-external-only --depmap-minimal --no-depmap-minimal --depmap-graph --no-depmap-graph --depmap-project-info --no-depmap-project-info --depmap-project-info-formatted --no-depmap-project-info-formatted --depmap-separator= '
      __comp "$opts"
      ;;

    deps)
      local opts='--no-time --no-explain --no-kill-nailguns --ng-daemons --no-ng-daemons --no-quiet --no-colors --no-lock --read-from-artifact-cache --no-read-from-artifact-cache --exclude-target-regexp --write-to-artifact-cache --no-write-to-artifact-cache --print-exception-stacktrace --no-print-exception-stacktrace --fail-fast --no-fail-fast --pantsrc --no-pantsrc --help --timeout --time --no-time --explain --no-explain --kill-nailguns --no-kill-nailguns --ng-daemons --no-ng-daemons --logdir --level --quiet --no-quiet --interpreter --no-colors --no-lock --read-from-artifact-cache --no-read-from-artifact-cache --exclude-target-regexp --write-to-artifact-cache --no-write-to-artifact-cache --print-exception-stacktrace --no-print-exception-stacktrace --fail-fast --no-fail-fast --pantsrc --no-pantsrc '
      __comp "$opts"
      ;;

    detect-duplicates)
      local opts='--detect-duplicates-fail-fast --no-detect-duplicates-fail-fast --detect-duplicates-excludes= --detect-duplicates-max-dups= '
      __comp "$opts"
      ;;

    doc)
      local opts='--doc-scaladoc-jvm-options= --doc-scaladoc-args= --doc-scaladoc-debug --no-doc-scaladoc-debug --doc-scaladoc-confs= --doc-scaladoc-include-codegen --no-doc-scaladoc-include-codegen --doc-scaladoc-transitive --no-doc-scaladoc-transitive --doc-scaladoc-combined --no-doc-scaladoc-combined --doc-scaladoc-open --combined --no-doc-scaladoc-open --doc-scaladoc-ignore-failure --no-doc-scaladoc-ignore-failure --doc-scaladoc-skip --no-doc-scaladoc-skip --doc-javadoc-jvm-options= --doc-javadoc-args= --doc-javadoc-debug --no-doc-javadoc-debug --doc-javadoc-confs= --doc-javadoc-include-codegen --no-doc-javadoc-include-codegen --doc-javadoc-transitive --no-doc-javadoc-transitive --doc-javadoc-combined --no-doc-javadoc-combined --doc-javadoc-open --combined --no-doc-javadoc-open --doc-javadoc-ignore-failure --no-doc-javadoc-ignore-failure --doc-javadoc-skip --no-doc-javadoc-skip '
      __comp "$opts"
      ;;

    eclipse)
      local opts='--eclipse-project-name= --eclipse-project-dir= --eclipse-project-cwd= --eclipse-project-dir --eclipse-intransitive --no-eclipse-intransitive --eclipse-python --no-eclipse-python --eclipse-java --no-eclipse-java --eclipse-java-language-level= --eclipse-java-jdk-name= --java- --eclipse-scala --no-eclipse-scala --eclipse-use-source-root --no-eclipse-use-source-root --eclipse-infer-test-from-siblings --no-eclipse-infer-test-from-siblings --eclipse-version= '
      __comp "$opts"
      ;;

    ensime)
      local opts='--ensime-project-name= --ensime-project-dir= --ensime-project-cwd= --ensime-project-dir --ensime-intransitive --no-ensime-intransitive --ensime-python --no-ensime-python --ensime-java --no-ensime-java --ensime-java-language-level= --ensime-java-jdk-name= --java- --ensime-scala --no-ensime-scala --ensime-use-source-root --no-ensime-use-source-root --ensime-infer-test-from-siblings --no-ensime-infer-test-from-siblings --ensime-scala-language-level= '
      __comp "$opts"
      ;;

    filedeps)
      local opts='--filedeps-sep= --filedeps-output-file= '
      __comp "$opts"
      ;;

    filemap)
      local opts='--filemap-sep= --filemap-output-file= '
      __comp "$opts"
      ;;

    filter)
      local opts='--filter-sep= --filter-output-file= --filter-type= --filter-target= --filter-ancestor= --filter-regex= '
      __comp "$opts"
      ;;

    gen)
      local opts='--gen-protoc-lang= --gen-lessc-force-get --no-gen-lessc-force-get --gen-lessc-skip-bootstrap --no-gen-lessc-skip-bootstrap --gen-aapt-sdk-path= --gen-aapt-target-sdk= --gen-aapt-build-tools-version= --gen-aapt-ignored-assets= --gen-rtl-force-get --no-gen-rtl-force-get --gen-rtl-skip-bootstrap --no-gen-rtl-skip-bootstrap --gen-scrooge-verbose --no-gen-scrooge-verbose --gen-requirejs-force-get --no-gen-requirejs-force-get --gen-requirejs-skip-bootstrap --no-gen-requirejs-skip-bootstrap --gen-thrift-version= --gen-thrift-lang= '
      __comp "$opts"
      ;;

    goals)
      local opts='--goals-sep= --goals-output-file= --goals-graph --no-goals-graph --goals-all --no-goals-all '
      __comp "$opts"
      ;;

    idea)
      local opts='--idea-project-name= --idea-project-dir= --idea-project-cwd= --idea-project-dir --idea-intransitive --no-idea-intransitive --idea-python --no-idea-python --idea-java --no-idea-java --idea-java-language-level= --idea-java-jdk-name= --java- --idea-scala --no-idea-scala --idea-source-root= --idea-version= --idea-merge --no-idea-merge --idea-open --no-idea-open --idea-bash --no-idea-bash --idea-scala-language-level= --idea-scala-maximum-heap-size-mb= --idea-fsc --no-idea-fsc --idea-java-encoding= --idea-java-maximum-heap-size-mb= '
      __comp "$opts"
      ;;

    invalidate)
      local opts='--invalidate-ng-killall-everywhere --no-invalidate-ng-killall-everywhere '
      __comp "$opts"
      ;;

    killserver)
      local opts=''
      __comp "$opts"
      ;;

    list)
      local opts='--list-sep= --list-output-file= --list-provides --provides-columns --no-list-provides --list-provides-columns= --provides --list-documented --no-list-documented '
      __comp "$opts"
      ;;

    markdown)
      local opts='--markdown-code-style= --markdown-open --no-markdown-open --markdown-fragment --no-markdown-fragment --markdown-extension= '
      __comp "$opts"
      ;;

    minimize)
      local opts='--minimize-sep= --minimize-output-file= '
      __comp "$opts"
      ;;

    ng-killall)
      local opts='--ng-killall-everywhere --no-ng-killall-everywhere '
      __comp "$opts"
      ;;

    owners)
      local opts='--no-time --no-explain --no-kill-nailguns --ng-daemons --no-ng-daemons --no-quiet --no-colors --no-lock --read-from-artifact-cache --no-read-from-artifact-cache --exclude-target-regexp --write-to-artifact-cache --no-write-to-artifact-cache --print-exception-stacktrace --no-print-exception-stacktrace --fail-fast --no-fail-fast --pantsrc --no-pantsrc --help --timeout --time --no-time --explain --no-explain --kill-nailguns --no-kill-nailguns --ng-daemons --no-ng-daemons --logdir --level --quiet --no-quiet --interpreter --no-colors --no-lock --read-from-artifact-cache --no-read-from-artifact-cache --exclude-target-regexp --write-to-artifact-cache --no-write-to-artifact-cache --print-exception-stacktrace --no-print-exception-stacktrace --fail-fast --no-fail-fast --pantsrc --no-pantsrc '
      __comp "$opts"
      ;;

    path)
      local opts='--path-sep= --path-output-file= '
      __comp "$opts"
      ;;

    pathdeps)
      local opts='--pathdeps-sep= --pathdeps-output-file= '
      __comp "$opts"
      ;;

    paths)
      local opts='--paths-sep= --paths-output-file= '
      __comp "$opts"
      ;;

    provides)
      local opts='--provides-transitive --no-provides-transitive --provides-also-write-to-stdout --no-provides-also-write-to-stdout '
      __comp "$opts"
      ;;

    publish)
      local opts='--publish-dryrun --no-publish-dryrun --publish-commit --no-publish-commit --publish-local= --publish-scm-push-attempts= --publish-local-snapshot --local --no-publish-local-snapshot --publish-named-snapshot= --publish-transitive --no-publish-transitive --publish-force --no-publish-force --publish-override= --override= --override= --publish-restart-at= --restart-at= --restart-at= '
      __comp "$opts"
      ;;

    repl-dirty)
      local opts='--repl-dirty-scala-dirty-jvm-options= --repl-dirty-scala-dirty-args= --repl-dirty-scala-dirty-debug --no-repl-dirty-scala-dirty-debug --repl-dirty-scala-dirty-confs= '
      __comp "$opts"
      ;;

    repl)
      local opts='--repl-scala-jvm-options= --repl-scala-args= --repl-scala-debug --no-repl-scala-debug --repl-scala-confs= --repl-python-repl-timeout= --repl-python-repl-ipython --no-repl-python-repl-ipython '
      __comp "$opts"
      ;;

    resolve)
      local opts='--resolve-ivy-override= --override= --override= --resolve-ivy-report --no-resolve-ivy-report --resolve-ivy-open --report --no-resolve-ivy-open --resolve-ivy-outdir= --resolve-ivy-args= --resolve-ivy-mutable-pattern= '
      __comp "$opts"
      ;;

    roots)
      local opts='--roots-sep= --roots-output-file= '
      __comp "$opts"
      ;;

    run-dirty)
      local opts='--run-dirty-jvm-dirty-jvm-options= --run-dirty-jvm-dirty-args= --run-dirty-jvm-dirty-debug --no-run-dirty-jvm-dirty-debug --run-dirty-jvm-dirty-confs= --run-dirty-jvm-dirty-only-write-cmd-line= '
      __comp "$opts"
      ;;

    run)
      local opts='--run-python-run-timeout= --run-jvm-jvm-options= --run-jvm-args= --run-jvm-debug --no-run-jvm-debug --run-jvm-confs= --run-jvm-only-write-cmd-line= '
      __comp "$opts"
      ;;

    server)
      local opts='--server-port= --server-allowed-clients= --server-open --no-server-open '
      __comp "$opts"
      ;;

    sort)
      local opts='--sort-sep= --sort-output-file= --sort-reverse --no-sort-reverse '
      __comp "$opts"
      ;;

    targets)
      local opts='--targets-sep= --targets-output-file= --targets-details= '
      __comp "$opts"
      ;;

    test)
      local opts='--test-pytest-timeout= --test-pytest-fast --no-test-pytest-fast --test-pytest-options= --test-junit-jvm-options= --test-junit-args= --test-junit-debug --no-test-junit-debug --test-junit-confs= --test-junit-coverage-patterns= --test-junit-coverage-console --no-test-junit-coverage-console --test-junit-coverage-xml --no-test-junit-coverage-xml --test-junit-coverage-html --no-test-junit-coverage-html --test-junit-coverage-html-open --coverage-html --no-test-junit-coverage-html-open --test-junit-skip --no-test-junit-skip --test-junit-fail-fast --no-test-junit-fail-fast --test-junit-batch-size= --test-junit-test= --test-junit-xml-report --no-test-junit-xml-report --test-junit-per-test-timer --no-test-junit-per-test-timer --test-junit-default-parallel --no-test-junit-default-parallel --test-junit-parallel-threads= --test-junit-test-shard= --test-junit-suppress-output --xml-report --no-test-junit-suppress-output --test-junit-coverage --no-test-junit-coverage --test-junit-coverage-processor= '
      __comp "$opts"
      ;;

    thrift-linter)
      local opts='--thrift-linter-strict --no-thrift-linter-strict '
      __comp "$opts"
      ;;


  esac

  return 0
}

complete -o nospace -F _pants pants
