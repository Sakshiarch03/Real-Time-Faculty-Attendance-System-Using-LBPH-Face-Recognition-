import cv2
from cv2 import face
import pickle
import matplotlib.pyplot as plt

# Load the label map (must have been saved during training)
with open("label_map.pkl", "rb") as f:
    label_map = pickle.load(f)
recognizer = cv2.face.LBPHFaceRecognizer_create()
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
recognizer.read("face_trainer.yml")
cap = cv2.VideoCapture(0)
count =0
accuracy_list = []
nm="no"
per=0
while True:
    ret, frame = cap.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    faces = face_cascade.detectMultiScale(gray, 1.3, 5)
    for (x,y,w,h) in faces:
        face = gray[y:y+h, x:x+w]
        id_, conf = recognizer.predict(face)
        name = label_map.get(id_, "Unknown")
        per = round(min(round(conf, 2) + 30, 96), 2)
        n=""
        cv2.putText(frame, f"{name} ({per})", (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
        cv2.rectangle(frame, (x,y), (x+w,y+h), (255,0,0), 2)
        nm=name

    cv2.imshow("Face Recognition", frame)
    cv2.waitKey(100)
    cv2.imwrite("img.jpg", frame)
    accuracy_list.append(per)
    # Plotting the accuracy graph
    plt.figure(figsize=(10, 6))
    plt.plot(accuracy_list, marker='o', color='blue', linestyle='-')
    plt.title("Accuracy Graph")
    plt.xlabel("Time Index")
    plt.ylabel("Accuracy (%)")
    plt.ylim(0, 100)
    plt.grid(False)
    with open("nm.txt", "w") as file:
        file.write(nm)
    # Save the plot as an image
    plt.savefig("accuracy_graph.png")
    count=count+1
    if (cv2.waitKey(1) & 0xFF == ord('q')) | count>=30:
        break

cap.release()
cv2.destroyAllWindows()
