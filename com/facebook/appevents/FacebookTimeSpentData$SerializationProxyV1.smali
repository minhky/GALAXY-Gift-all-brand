.class Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final interruptionCount:I

.field private final lastResumeTime:J

.field private final lastSuspendTime:J

.field private final millisecondsSpentInSession:J


# direct methods
.method constructor <init>(JJJI)V
    .registers 9

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    .line 99
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    .line 100
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    .line 101
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    .line 102
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 11

    .prologue
    .line 105
    new-instance v1, Lcom/facebook/appevents/FacebookTimeSpentData;

    iget-wide v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    iget-wide v4, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    iget-wide v6, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    iget v8, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJILcom/facebook/appevents/FacebookTimeSpentData$1;)V

    return-object v1
.end method