import sys
import os
import os.path
repos_dir = os.environ.get('REPOSDIR', os.path.join(os.environ['HOME'],
                                                    'repos'))
projects = ['DissertationCode', 'python-quantities',
            'basemap', 'Scattering']
projects.append(os.path.join('MetrTools', 'constants'))
projects.append(os.path.join('MetrTools', 'dsd'))
projects.append(os.path.join('matplotlib', 'lib'))
for proj in projects:
    sys.path.insert(1, os.path.join(repos_dir, proj))
#sys.path.insert(1, os.path.join(os.environ['HOME'], 'repos',
                                #'DissertationCode/'))
