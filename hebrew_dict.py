# %% Preparation

# Categories
noun = 'noun'
verb = 'verb'
adj = 'adjective'
adv = 'adverb'
pre = 'preposition'
pro = 'pronouns'
con = 'conjunction'
inter = 'jnterjection'

speech = [noun, verb, adj, adv, pre, pro]

# Create empty dictionary
dicty = {}
for part in speech:
    
    # Initialize an empty dictionary for each category
    dicty[part] = {}  

def doc_colors():
    """
    \033[1;31m Red \033[0m
    \033[1;32m Green \033[0m   
    \033[1;33m Yellow \033[0m
    \033[1;34m Blue \033[0m
    \033[1;35m Magenta \033[0m
    \033[1;36m Cyan \033[0m
    \033[1;37m White \033[0m
    """
    pass

print(doc_colors.__doc__)

# %% Class
class Hebrew():
    
    """
    summary
    """
        
    def __init__(self):
        self.dict = dicty
    
    
    def show(self, area = None):
        
        """
        summary
        """
        
        if area is None:
            # Category
            for key, value in self.dict.items():
                print(f'\033[1;34m{key}\033[0m')
                print('\033[1;34m-----------\033[0m')
                
                # Subcategory
                if value.keys() != []:
                    for value_key, value_value in value.items():
                        print(f'\t- \033[1;32m{value_key}\033[0m')
                        
                        # Word : translation
                        if value_value.keys() != []:
                            for word_key, word_value in value_value.items():
                                print(f'\t\t\t* {word_key} : {word_value}')
                    print('')
                    
            #print(self.dict)
        
        elif area == 'speech':
            for key in self.dict.keys():
                print(key)
        
        elif area == 'sub':
            for key, value in self.dict.items():
                print(key)
                
                if value.keys() != []:
                    for value_key, value_value in value.items():
                        print(f'\t- {value_key}')
                    print('')




    def add_category(self, speech, category):
        
        """
        summary
        """
        
        if speech not in self.dict:
            print(f'{speech} is not a part of speech.')
            
        if category not in self.dict[speech]:
            self.dict[speech][category] = {}
        else:
            print(f'"{category}" is already exist as subcategory in category "{speech}".')  
            
        return self
        
        
    def add_noun(self, word, translation, category = None):
        
        """
        summary
        """
        
        if category is None:
            # If subcategory is not provided, set it to an empty string
            category = 'No category'
        
        # Check if the main category 'noun' exists in the dictionary
        if noun not in self.dict:
            # Create an empty dictionary for 'noun' if it doesn't exist
            self.dict[noun] = {}
        
        # Check if the subcategory exists in the 'noun' category
        if category not in self.dict[noun]:
            # Create an empty dictionary for the subcategory
            self.dict[noun][category] = {}
        
        # Add the word and translation to the dictionary
        self.dict[noun][category][word] = translation
        
        
    def translate(self, word, speech = None, category = None):
        
        """
        summary
        """
        
        # If both category and subcategory are provided
        if speech is not None and category is not None:
            return self.dict.get(speech, {}).get(category, {}).get(word)
        
        # If only category is provided (subcategory is None)
        elif speech is not None and category is None:
            result = {}
            for s in self.dict.get(speech, {}).values():
                result.update(s)
            return result.get(word)
        
        # If only subcategory is provided (category is None)
        elif speech is None and category is not None:
            result = {}
            for c in self.dict.keys():
                result.update(self.dict[c].get(category, {}))
            return result.get(word)
        
        # If both category and subcategory are not provided (search the entire dictionary)
        else:
            result = {}
            for c in self.dict.keys():
                for s in self.dict[c].keys():
                    result.update(self.dict[c][s])
            return result.get(word)



    # Implement the __getitem__ method to make the class subscriptable
    def __getitem__(self, word):
        
        """
        summary
        """
        
        result = []
        for part in self.dict.keys():
            for cat in self.dict[part].keys():
                if word in self.dict[part][cat]:
                    result = [part, cat, word]
                    break
            if result != []:
                break
        message = f"""
        \033[1;34m---------------------\033[0m
        Part of speech = {result[0]}
        Category = {result[1]}
        
        {word} = {self.dict[part][cat][result[2]]}
        """
        return print(message) or None


#%%

my_dict = Hebrew()

# Fill dictionary with subcategories and words
my_dict.add_category('noun','fruit')
my_dict.add_noun('apple', 'תפוח', 'fruit')
my_dict.add_noun('banana', 'בננה', 'fruit')
my_dict.add_noun('orange', 'תפוז', 'fruit')

my_dict.add_category('noun','animals')
my_dict.add_noun('dog', 'כלב', 'animals')

# Show the content
my_dict.show()


# Test the translate method with different arguments
print(my_dict.translate('apple'))                          
print(my_dict.translate('banana', category = 'fruit'))      
print(my_dict.translate('orange', 'noun', 'fruit'))            
print(my_dict.translate('dog', 'noun'))                    
print(my_dict.translate('cat'))                            


my_dict['apple']
my_dict['banana']
my_dict['orange']
my_dict['dog']

