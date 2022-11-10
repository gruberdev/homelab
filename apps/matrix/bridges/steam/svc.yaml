apiVersion: v1
kind: Service
metadata:
  name: steam-bridge
  labels:
    app: steam-bridge
spec:
  type: ClusterIP
  selector:
    app: steam-bridge
  ports:
    - name: bridge
      port: 80
      targetPort: 6000
      protocol: TCP
