"""Pre-processing script to generate a sample for SavedModel prediction."""

import json
import sys
from trainer import model

TEST_CSV_PATH="data/adult.data.csv"
if __name__=='__main__':
  gen = model.generator_input([TEST_CSV_PATH], chunk_size=5000)
  sample = gen.next()

  input_sample = {}

  input_sample['input'] = sample[0].values[0].tolist()
  print('Produced sample with label {}'.format(sample[1].values[0].tolist()))

  with open(sys.argv[1], 'w') as outfile:
    json.dump(input_sample, outfile)
