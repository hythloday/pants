# Copyright 2014 Pants project contributors (see CONTRIBUTORS.md).
# Licensed under the Apache License, Version 2.0 (see LICENSE).

python_tests(
  name = 'artifact',
  sources = ['test_artifact.py'],
  dependencies = [
    'src/python/pants/backend/jvm:artifact',
    'src/python/pants/backend/jvm:repository',
    'tests/python/pants_test:base_test',
  ]
)

python_library(
  name = 'jvm_tool_task_test_base',
  sources = ['jvm_tool_task_test_base.py'],
  dependencies = [
    'src/python/pants/backend/jvm/tasks:jvm_tool_task_mixin',
    'src/python/pants/backend/jvm/tasks:bootstrap_jvm_tools',
    'src/python/pants/base:extension_loader',
    'src/python/pants/util:dirutil',
    'tests/python/pants_test:task_test_base',
  ]
)

python_library(
  name = 'nailgun_task_test_base',
  sources = ['nailgun_task_test_base.py'],
  dependencies = [
    ':jvm_tool_task_test_base',
    'src/python/pants/backend/jvm/tasks:nailgun_task',
  ]
)

python_library(
  name = 'jar_task_test_base',
  sources = ['jar_task_test_base.py'],
  dependencies = [
    ':nailgun_task_test_base',
  ]
)
