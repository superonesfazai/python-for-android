from setuptools import setup

exec (open('plotly/version.py').read())


def readme():
    with open('README.rst') as f:
        return f.read()


setup(name='plotly',
      version=__version__,
      use_2to3=True,
      author='Chris P',
      author_email='chris@plot.ly',
      maintainer='Chris P',
      maintainer_email='chris@plot.ly',
      url='https://plot.ly/api/python',
      description="Python plotting library for collaborative, "
                  "interactive, publication-quality graphs.",
      long_description=readme(),
      classifiers=[
          'Development Status :: 4 - Beta',
          'Programming Language :: Python :: 2.7',
          'Programming Language :: Python :: 3.3',
          'Topic :: Scientific/Engineering :: Visualization',
      ],
      license='MIT',
      packages=['plotly',
                'plotly/plotly',
                'plotly/plotly/chunked_requests',
                'plotly/graph_objs',
                'plotly/matplotlylib',
                'plotly/matplotlylib/mplexporter',
                'plotly/matplotlylib/mplexporter/renderers'],
      package_data={'plotly': ['graph_reference/*.json']},
      install_requires=[
          'requests',
      ],
      zip_safe=False)
