import random

deps = {}

#array of 20 deparment names
dep_titles = ["Electronics", "Computers", "Laptops", "Phones", "Clothes", "Shoes", "Hats", "Gloves", "Socks", "Underwear", "Food", "Drinks", "Snacks", "Candy", "Toys", "Games", "Books", "Movies", "Music", "Sports"]

def gen_dep_title():
   title = random.choice(dep_titles)
   dep_titles.remove(title)
   return title

def gen_dep_desc(title):
   #title to lowercase
   title = title.lower()
   return f"This is a department for {title}"

def gen_dep_parent():
   if len(deps) == 0:
      return None
   if random.randint(1, 10) < 3:
      return None
   return random.choice(list(deps.keys()))

def get_parent_path(dep_parent):
   if dep_parent is None:
      return ""
   return deps[dep_parent]["dep_path"]

def gen_dep():
   dep_title = gen_dep_title()
   dep_desc = gen_dep_desc(dep_title)
   dep_parent = gen_dep_parent()
   dep_path = f"{get_parent_path(dep_parent)}/{dep_title}"
   deps[dep_title] = {"dep_desc": dep_desc, "dep_parent": dep_parent, "dep_path": dep_path}

#generate a department for all titles
for i in range(len(dep_titles)):
   gen_dep()

def print_as_sql_insert(deps):
   for dep_title, dep_info in deps.items():
      print(f"INSERT INTO departments (dep_title, dep_desc, dep_parent, dep_path) VALUES ('{dep_title}', '{dep_info['dep_desc']}', {dep_info['dep_parent']}, '{dep_info['dep_path']}');")

print_as_sql_insert(deps)