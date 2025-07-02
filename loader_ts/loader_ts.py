import sys
sys.path.append('/3W')

import toolkit as tk


class LoaderTS(object):
    def __init__(self):
        self.real_instances, self.simulated_instances, self.drawn_instances = tk.get_all_labels_and_files()

    def load_real_instance(self,idx=0):
        return tk.load_instance(self.real_instances[idx])
    
    def load_simulated_instance(self, idx=0):
        return tk.load_instance(self.simulated_instances[idx])
    
    def load_drawn_instance(self, idx=0):
        return tk.load_instance(self.drawn_instances[idx])
    

if __name__ == "__main__":
    loader = LoaderTS()
    print("Real Instances:", loader.load_real_instance())

    