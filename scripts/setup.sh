
if [ -z "$(ls -A /code)" ]; then
   git clone https://github.com/g3w-suite/g3w-admin.git --single-branch --branch dev /code && \
   cd /code && \
   git checkout dev
fi

cp /requirements_rl.txt .

# Override settings
pip3 install -r requirements_rl.txt

# Front end
#TODO make this as generic so that we can install as many plugins as possible
git submodule add -f https://github.com/g3w-suite/g3w-admin-frontend.git  g3w-admin/frontend


# Caching
pip3 install -r /code/g3w-admin/caching/requirements.txt

# File manager
pip3 install -r /code/g3w-admin/filemanager/requirements.txt
