import datasets

# dataset = datasets.load_dataset("samsum", split='train')
# dataset2= datasets.load_dataset("samsum", split='test')
# dataset3= datasets.load_dataset("samsum", split='validation')


dataset = datasets.load_dataset("samsum")
dataset.save_to_disk('./samsum')
dataset = datasets.load_dataset('./samsum', split='train')
dataset = datasets.load_from_disk('./samsum/train')
print('finish')