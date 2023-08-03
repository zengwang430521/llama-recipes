import datasets

dataset = datasets.load_dataset("samsum", split='train')
dataset2= datasets.load_dataset("samsum", split='test')
dataset3= datasets.load_dataset("samsum", split='validation')

print('finish')