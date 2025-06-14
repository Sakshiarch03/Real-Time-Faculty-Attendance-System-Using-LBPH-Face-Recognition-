import cv2
import numpy as np
import os
import pickle

data_path = "faces/"
people = os.listdir(data_path)

faces = []
labels = []
label_map = {}

for i, person in enumerate(people):
    person_path = os.path.join(data_path, person)
    label_map[i] = person  # create mapping
    for img_file in os.listdir(person_path):
        img_path = os.path.join(person_path, img_file)
        img = cv2.imread(img_path, cv2.IMREAD_GRAYSCALE)
        faces.append(img)
        labels.append(i)

recognizer = cv2.face.LBPHFaceRecognizer_create()
recognizer.train(faces, np.array(labels))
recognizer.save("trained_model.yml")

# Save the label map
with open("label_map.pkl", "wb") as f:
    pickle.dump(label_map, f)
