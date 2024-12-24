# logestar - Real-time threat detection for HTTP access logs

[![made with Go](https://img.shields.io/badge/made%20with-Go-brightgreen)](http://golang.org)
[![codecov](https://codecov.io/gh/0xsha/logestar/branch/main/graph/badge.svg?token=3ZQZQZQZQZ)](https://codecov.io/gh/0xsha/logestar)
[![Go Report Card](https://goreportcard.com/badge/github.com/0xsha/logestar)](https://goreportcard.com/report/github.com/0xsha/logestar)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

logestar is a real-time threat detection tool for HTTP access logs. Inspired by [teler.app](https://github.com/teler-sh/teler), logestar extends its functionality by integrating a Variational Autoencoder (VAE)-based machine learning confidence metric to classify events as attacks or benign requests, as well as a KMeans Clustering with Random Forest Classifiers approach to identifying the perspective CVE.
The name logestar is a wordplay on "Lodestar," symbolizing guidance and precision.

## Features

- [ ] Nuclei Integration: Utilizes Nuclei templates for rule-based threat detection.
- [ ] VAE-Based Threat Confidence: Implements a Variational Autoencoder to compute a confidence metric for classifying requests.
- [ ] Real-Time Detection: Processes HTTP access logs in real-time to identify and flag threats.
- [ ] Customizable: Supports user-defined Nuclei templates and thresholds for VAE confidence scoring.
- [ ] Loki and Grafana Integration: Sends logs to Loki for visualization in Grafana.
