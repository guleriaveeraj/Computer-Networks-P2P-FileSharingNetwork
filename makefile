JC = javac
JFLAGS = -g
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	BitField.java \
	CommonProperties.java \
	ConversionUtil.java \
	DataMessage.java \
	DataMessageWrapper.java \
	DateUtil.java \
	HandshakeMessage.java \
	ListeningThread.java \
	LogGenerator.java \
	MessageConstants.java \
	MessageProcessor.java \
	PeerDataRateComparator.java \
	peerProcess.java \
	Piece.java \
	RemotePeerHandler.java \
	RemotePeerInfo.java \
	startRemotePeers.java
default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) *.class