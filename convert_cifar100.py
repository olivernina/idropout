__author__ = 'oliver'

import numpy
import cPickle

root_path = '../data/cifar-100/'
dst_path = '../data/cifar-100-fixed/'

# meta = numpy.load(root_path + 'batches.meta')
# new_meta = {}
# new_meta['label_names'] = meta['fine_label_names']
# new_meta['data_mean'] = 0
# fo = open(dst_path + 'batches.meta','wb')
# cPickle.dump(new_meta,fo)

# data1 = numpy.load(root_path + 'data_batch_1')
fi = open(root_path + 'data_batch_1','rb')
data1 = cPickle.load(fi)
new_data1 = {}
new_data1['data'] = numpy.transpose(data1['data'])
new_data1['batch_label'] = data1['batch_label']
new_data1['labels'] = data1['fine_labels']
new_data1['filenames'] = data1['filenames']
fo = open(dst_path + 'data_batch_1','wb')
cPickle.dump(new_data1,fo)

fi = open(root_path + 'data_batch_2','rb')
data1 = cPickle.load(fi)
new_data1 = {}
new_data1['data'] = numpy.transpose(data1['data'])
new_data1['batch_label'] = data1['batch_label']
new_data1['labels'] = data1['fine_labels']
new_data1['filenames'] = data1['filenames']
fo = open(dst_path + 'data_batch_2','wb')
cPickle.dump(new_data1,fo)