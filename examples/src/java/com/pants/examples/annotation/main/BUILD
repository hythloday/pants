# Copyright 2014 Pants project contributors (see CONTRIBUTORS.md).
# Licensed under the Apache License, Version 2.0 (see LICENSE).
#
#  Example for annotation_processor() target

jvm_binary(name='main',
  source='Main.java',
  main='com.pants.examples.annotation.main.Main',
  basename = 'annotation-example',
  dependencies=[
    'examples/src/java/com/pants/examples/annotation/example',
    'examples/src/java/com/pants/examples/annotation/processor',
  ],
)
