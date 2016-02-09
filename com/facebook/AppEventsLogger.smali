.class public Lcom/facebook/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;,
        Lcom/facebook/AppEventsLogger$AppEvent;,
        Lcom/facebook/AppEventsLogger$FlushBehavior;,
        Lcom/facebook/AppEventsLogger$FlushReason;,
        Lcom/facebook/AppEventsLogger$FlushResult;,
        Lcom/facebook/AppEventsLogger$FlushStatistics;,
        Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo;,
        Lcom/facebook/AppEventsLogger$PersistedEvents;,
        Lcom/facebook/AppEventsLogger$SessionEventsState;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field private static hashedDeviceAndAppId:Ljava/lang/String;

.field private static isOpenedByApplink:Z

.field private static requestInFlight:Z

.field private static sourceApplication:Ljava/lang/String;

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    const-class v0, Lcom/facebook/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 160
    sput-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    .line 409
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/facebook/Session;

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iput-object p1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    .line 619
    if-nez p3, :cond_10

    .line 620
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p3

    .line 624
    :cond_10
    if-eqz p3, :cond_41

    .line 625
    if-eqz p2, :cond_1e

    invoke-virtual {p3}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 627
    :cond_1e
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 636
    :goto_25
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_28
    sget-object v0, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 639
    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 642
    :cond_32
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_3c

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 636
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_50

    .line 647
    invoke-static {}, Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 648
    return-void

    .line 630
    :cond_41
    if-nez p2, :cond_47

    .line 631
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 633
    :cond_47
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    goto :goto_25

    .line 636
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .registers 5

    .prologue
    .line 896
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger;->handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    return-void
.end method

.method static synthetic access$2()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .prologue
    .line 162
    sget-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V
    .registers 4

    .prologue
    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/AppEventsLogger;J)V
    .registers 3

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/facebook/AppEventsLogger;->logAppSessionSuspendEvent(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 1

    .prologue
    .line 781
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V

    return-void
.end method

.method static synthetic access$6()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 166
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7()Ljava/util/Map;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .registers 3

    .prologue
    .line 743
    invoke-static {p0, p1}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9()V
    .registers 0

    .prologue
    .line 721
    invoke-static {}, Lcom/facebook/AppEventsLogger;->flushIfNecessary()V

    return-void
.end method

.method private static accumulatePersistedEvents()I
    .registers 7

    .prologue
    .line 953
    sget-object v5, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/AppEventsLogger$PersistedEvents;

    move-result-object v2

    .line 955
    .local v2, "persistedEvents":Lcom/facebook/AppEventsLogger$PersistedEvents;
    const/4 v3, 0x0

    .line 956
    .local v3, "result":I
    invoke-virtual {v2}, Lcom/facebook/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_16

    .line 964
    return v3

    .line 956
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 957
    .local v0, "accessTokenAppId":Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    sget-object v6, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v4

    .line 959
    .local v4, "sessionEventsState":Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {v2, v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    .line 960
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    invoke-virtual {v4, v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    .line 961
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_f
.end method

.method public static activateApp(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/facebook/Settings;->sdkInitialize(Landroid/content/Context;)V

    .line 260
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 272
    if-eqz p0, :cond_5

    if-nez p1, :cond_d

    .line 273
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Both context and applicationId must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_d
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_32

    move-object v4, p0

    .line 277
    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/facebook/AppEventsLogger;->setSourceApplication(Landroid/app/Activity;)V

    .line 287
    :goto_17
    invoke-static {p0, p1, v6}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    .line 289
    new-instance v2, Lcom/facebook/AppEventsLogger;

    invoke-direct {v2, p0, p1, v6}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    .line 290
    .local v2, "logger":Lcom/facebook/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 291
    .local v0, "eventTime":J
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getSourceApplication()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "sourceApplicationInfo":Ljava/lang/String;
    sget-object v4, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/AppEventsLogger$1;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/facebook/AppEventsLogger$1;-><init>(Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 298
    return-void

    .line 280
    .end local v0    # "eventTime":J
    .end local v2    # "logger":Lcom/facebook/AppEventsLogger;
    .end local v3    # "sourceApplicationInfo":Ljava/lang/String;
    :cond_32
    invoke-static {}, Lcom/facebook/AppEventsLogger;->resetSourceApplication()V

    .line 281
    const-class v4, Lcom/facebook/AppEventsLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 282
    const-string v5, "To set source application the context of activateApp must be an instance of Activity"

    .line 281
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    .registers 14
    .param p0, "reason"    # Lcom/facebook/AppEventsLogger$FlushReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AppEventsLogger$FlushReason;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    .prologue
    .local p1, "keysToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    const/4 v6, 0x0

    .line 814
    new-instance v1, Lcom/facebook/AppEventsLogger$FlushStatistics;

    invoke-direct {v1, v6}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    .line 816
    .local v1, "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    sget-object v7, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 818
    .local v2, "limitEventUsage":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v4, "requestsToExecute":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_48

    .line 832
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_68

    .line 833
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 834
    iget v11, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 835
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 833
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 845
    .end local v1    # "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    :goto_47
    return-object v1

    .line 819
    .restart local v1    # "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    :cond_48
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 820
    .local v0, "accessTokenAppId":Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v5

    .line 821
    .local v5, "sessionEventsState":Lcom/facebook/AppEventsLogger$SessionEventsState;
    if-eqz v5, :cond_15

    .line 825
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/AppEventsLogger;->buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;

    move-result-object v3

    .line 827
    .local v3, "request":Lcom/facebook/Request;
    if-eqz v3, :cond_15

    .line 828
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 837
    .end local v0    # "accessTokenAppId":Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    .end local v3    # "request":Lcom/facebook/Request;
    .end local v5    # "sessionEventsState":Lcom/facebook/AppEventsLogger$SessionEventsState;
    :cond_5e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Request;

    .line 840
    .restart local v3    # "request":Lcom/facebook/Request;
    invoke-virtual {v3}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    goto :goto_41

    .end local v3    # "request":Lcom/facebook/Request;
    :cond_68
    move-object v1, v6

    .line 845
    goto :goto_47
.end method

.method private static buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;
    .registers 13
    .param p0, "accessTokenAppId"    # Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    .param p1, "sessionEventsState"    # Lcom/facebook/AppEventsLogger$SessionEventsState;
    .param p2, "limitEventUsage"    # Z
    .param p3, "flushState"    # Lcom/facebook/AppEventsLogger$FlushStatistics;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 857
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 863
    .local v1, "fetchedAppSettings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    const-string v6, "%s/activities"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 861
    invoke-static {v5, v6, v5, v5}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    .line 867
    .local v3, "postRequest":Lcom/facebook/Request;
    invoke-virtual {v3}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 868
    .local v4, "requestParameters":Landroid/os/Bundle;
    if-nez v4, :cond_24

    .line 869
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 871
    .restart local v4    # "requestParameters":Landroid/os/Bundle;
    :cond_24
    const-string v6, "access_token"

    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3, v4}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 874
    if-nez v1, :cond_34

    move-object v3, v5

    .line 893
    .end local v3    # "postRequest":Lcom/facebook/Request;
    :goto_33
    return-object v3

    .line 878
    .restart local v3    # "postRequest":Lcom/facebook/Request;
    :cond_34
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v6

    .line 879
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    move-result v7

    .line 878
    invoke-virtual {p1, v3, v6, v7, p2}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ZZZ)I

    move-result v2

    .line 880
    .local v2, "numEvents":I
    if-nez v2, :cond_44

    move-object v3, v5

    .line 881
    goto :goto_33

    .line 884
    :cond_44
    iget v5, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    add-int/2addr v5, v2

    iput v5, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 886
    new-instance v5, Lcom/facebook/AppEventsLogger$7;

    invoke-direct {v5, p0, v3, p1, p3}, Lcom/facebook/AppEventsLogger$7;-><init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    invoke-virtual {v3, v5}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    goto :goto_33
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 324
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Both context and applicationId must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :cond_c
    invoke-static {}, Lcom/facebook/AppEventsLogger;->resetSourceApplication()V

    .line 329
    new-instance v2, Lcom/facebook/AppEventsLogger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    .line 330
    .local v2, "logger":Lcom/facebook/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    .local v0, "eventTime":J
    sget-object v3, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/facebook/AppEventsLogger$2;

    invoke-direct {v4, v2, v0, v1}, Lcom/facebook/AppEventsLogger$2;-><init>(Lcom/facebook/AppEventsLogger;J)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method static eagerFlush()V
    .registers 2

    .prologue
    .line 716
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_d

    .line 717
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 719
    :cond_d
    return-void
.end method

.method private static flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 3
    .param p0, "reason"    # Lcom/facebook/AppEventsLogger$FlushReason;

    .prologue
    .line 773
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/AppEventsLogger$6;

    invoke-direct {v1, p0}, Lcom/facebook/AppEventsLogger$6;-><init>(Lcom/facebook/AppEventsLogger$FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method private static flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .registers 7
    .param p0, "reason"    # Lcom/facebook/AppEventsLogger$FlushReason;

    .prologue
    .line 784
    sget-object v5, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 785
    :try_start_3
    sget-boolean v4, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    if-eqz v4, :cond_9

    .line 786
    monitor-exit v5

    .line 811
    :cond_8
    :goto_8
    return-void

    .line 788
    :cond_9
    const/4 v4, 0x1

    sput-boolean v4, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 789
    new-instance v3, Ljava/util/HashSet;

    sget-object v4, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 784
    .local v3, "keysToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_48

    .line 792
    invoke-static {}, Lcom/facebook/AppEventsLogger;->accumulatePersistedEvents()I

    .line 794
    const/4 v1, 0x0

    .line 796
    .local v1, "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    :try_start_1c
    invoke-static {p0, v3}, Lcom/facebook/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4b

    move-result-object v1

    .line 801
    :goto_20
    sget-object v5, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 802
    const/4 v4, 0x0

    :try_start_24
    sput-boolean v4, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 801
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_54

    .line 805
    if-eqz v1, :cond_8

    .line 806
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v5, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v5, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 809
    sget-object v4, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_8

    .line 784
    .end local v1    # "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "keysToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catchall_48
    move-exception v4

    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v4

    .line 797
    .restart local v1    # "flushResults":Lcom/facebook/AppEventsLogger$FlushStatistics;
    .restart local v3    # "keysToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catch_4b
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v5, "Caught unexpected exception while flushing: "

    invoke-static {v4, v5, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 801
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v4

    :try_start_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v4
.end method

.method private static flushIfNecessary()V
    .registers 3

    .prologue
    .line 722
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    :try_start_3
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v2, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v2, :cond_18

    .line 724
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getAccumulatedEventCount()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_18

    .line 725
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 722
    :cond_18
    monitor-exit v1

    .line 729
    return-void

    .line 722
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static getAccumulatedEventCount()I
    .registers 5

    .prologue
    .line 732
    sget-object v3, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "result":I
    :try_start_4
    sget-object v2, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    .line 738
    monitor-exit v3

    return v0

    .line 735
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .line 736
    .local v1, "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_e

    .line 732
    .end local v1    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public static getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;
    .registers 2

    .prologue
    .line 418
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v0

    .line 418
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getLimitEventUsage(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessTokenAppId"    # Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .prologue
    .line 747
    sget-object v4, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .line 748
    .local v2, "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    const/4 v1, 0x0

    .line 749
    .local v1, "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v2, :cond_f

    .line 751
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 754
    :cond_f
    sget-object v5, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 756
    :try_start_12
    sget-object v4, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-object v2, v0

    .line 757
    if-nez v2, :cond_2f

    .line 758
    new-instance v3, Lcom/facebook/AppEventsLogger$SessionEventsState;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v6}, Lcom/facebook/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_31

    .line 759
    .end local v2    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    .local v3, "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    :try_start_29
    sget-object v4, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    move-object v2, v3

    .line 761
    .end local v3    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    .restart local v2    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    :cond_2f
    :try_start_2f
    monitor-exit v5

    return-object v2

    .line 754
    :catchall_31
    move-exception v4

    :goto_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_31

    throw v4

    .end local v2    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    .restart local v3    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    :catchall_34
    move-exception v4

    move-object v2, v3

    .end local v3    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    .restart local v2    # "state":Lcom/facebook/AppEventsLogger$SessionEventsState;
    goto :goto_32
.end method

.method private static getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .registers 3
    .param p0, "accessTokenAppId"    # Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .prologue
    .line 766
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 767
    :try_start_3
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    monitor-exit v1

    return-object v0

    .line 766
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static getSourceApplication()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1031
    const-string v0, "Unclassified"

    .line 1032
    .local v0, "openType":Ljava/lang/String;
    sget-boolean v1, Lcom/facebook/AppEventsLogger;->isOpenedByApplink:Z

    if-eqz v1, :cond_8

    .line 1033
    const-string v0, "Applink"

    .line 1035
    :cond_8
    sget-object v1, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .end local v0    # "openType":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .registers 20
    .param p0, "accessTokenAppId"    # Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "response"    # Lcom/facebook/Response;
    .param p3, "sessionEventsState"    # Lcom/facebook/AppEventsLogger$SessionEventsState;
    .param p4, "flushState"    # Lcom/facebook/AppEventsLogger$FlushStatistics;

    .prologue
    .line 898
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 899
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    const-string v8, "Success"

    .line 901
    .local v8, "resultDescription":Ljava/lang/String;
    sget-object v5, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 903
    .local v5, "flushResult":Lcom/facebook/AppEventsLogger$FlushResult;
    if-eqz v2, :cond_16

    .line 904
    const/4 v1, -0x1

    .line 905
    .local v1, "NO_CONNECTIVITY_ERROR_CODE":I
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6f

    .line 906
    const-string v8, "Failed: No Connectivity"

    .line 907
    sget-object v5, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 916
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_16
    :goto_16
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v9}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 917
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Request;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 921
    .local v3, "eventsJsonString":Ljava/lang/String;
    :try_start_24
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 922
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2d} :catch_89

    move-result-object v7

    .line 927
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .local v7, "prettyPrintedEvents":Ljava/lang/String;
    :goto_2e
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v10, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 928
    const-string v11, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 929
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Request;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 930
    aput-object v8, v12, v13

    const/4 v13, 0x2

    .line 931
    aput-object v7, v12, v13

    .line 927
    invoke-static {v9, v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_4b
    if-eqz v2, :cond_8d

    const/4 v9, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/facebook/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    .line 936
    sget-object v9, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-ne v5, v9, :cond_5e

    .line 941
    sget-object v9, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v9, p0, v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;)V

    .line 944
    :cond_5e
    sget-object v9, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    if-eq v5, v9, :cond_6e

    .line 946
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    sget-object v10, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-eq v9, v10, :cond_6e

    .line 947
    move-object/from16 v0, p4

    iput-object v5, v0, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 950
    :cond_6e
    return-void

    .line 909
    .restart local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_6f
    const-string v9, "Failed:\n  Response: %s\n  Error %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 910
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 911
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 909
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 912
    sget-object v5, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    goto :goto_16

    .line 923
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    .restart local v3    # "eventsJsonString":Ljava/lang/String;
    :catch_89
    move-exception v4

    .line 924
    .local v4, "exc":Lorg/json/JSONException;
    const-string v7, "<Can\'t encode events for debug logging>"

    .restart local v7    # "prettyPrintedEvents":Ljava/lang/String;
    goto :goto_2e

    .line 934
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v4    # "exc":Lorg/json/JSONException;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_8d
    const/4 v9, 0x0

    goto :goto_4e
.end method

.method private static initializeTimersIfNeeded()V
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    .line 651
    sget-object v4, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 652
    :try_start_5
    sget-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_b

    .line 653
    monitor-exit v4

    .line 695
    .local v1, "flushRunnable":Ljava/lang/Runnable;
    .local v5, "attributionRecheckRunnable":Ljava/lang/Runnable;
    :goto_a
    return-void

    .line 655
    .end local v1    # "flushRunnable":Ljava/lang/Runnable;
    .end local v5    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    :cond_b
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 651
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_33

    .line 658
    new-instance v1, Lcom/facebook/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/AppEventsLogger$3;-><init>()V

    .line 667
    .restart local v1    # "flushRunnable":Ljava/lang/Runnable;
    sget-object v0, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 670
    const-wide/16 v4, 0xf

    .line 671
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 667
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 674
    new-instance v5, Lcom/facebook/AppEventsLogger$4;

    invoke-direct {v5}, Lcom/facebook/AppEventsLogger$4;-><init>()V

    .line 689
    .restart local v5    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    sget-object v4, Lcom/facebook/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 692
    const-wide/32 v8, 0x15180

    .line 693
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v2

    .line 689
    invoke-virtual/range {v4 .. v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a

    .line 651
    .end local v1    # "flushRunnable":Ljava/lang/Runnable;
    .end local v5    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private logAppSessionResumeEvent(JLjava/lang/String;)V
    .registers 10
    .param p1, "eventTime"    # J
    .param p3, "sourceApplicationInfo"    # Ljava/lang/String;

    .prologue
    .line 340
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo;->onResume(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V

    .line 341
    return-void
.end method

.method private logAppSessionSuspendEvent(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .prologue
    .line 344
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/AppEventsLogger$PersistedAppSessionInfo;->onSuspend(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger;J)V

    .line 345
    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/facebook/AppEventsLogger$AppEvent;
    .param p2, "accessTokenAppId"    # Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .prologue
    .line 705
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/AppEventsLogger$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/AppEventsLogger$5;-><init>(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .registers 11
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # Ljava/lang/Double;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "isImplicitlyLogged"    # Z

    .prologue
    .line 698
    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 699
    .local v0, "event":Lcom/facebook/AppEventsLogger$AppEvent;
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V

    .line 700
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 356
    new-instance v0, Lcom/facebook/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 369
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/facebook/Session;

    .prologue
    .line 384
    new-instance v0, Lcom/facebook/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 973
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public static onContextStop()V
    .registers 2

    .prologue
    .line 565
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 566
    return-void
.end method

.method static resetSourceApplication()V
    .registers 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1043
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/AppEventsLogger;->isOpenedByApplink:Z

    .line 1044
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/AppEventsLogger$FlushBehavior;)V
    .registers 3
    .param p0, "flushBehavior"    # Lcom/facebook/AppEventsLogger$FlushBehavior;

    .prologue
    .line 430
    sget-object v1, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_3
    sput-object p0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 430
    monitor-exit v1

    .line 433
    return-void

    .line 430
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static setLimitEventUsage(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "limitEventUsage"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    invoke-static {p0, p1}, Lcom/facebook/Settings;->setLimitEventAndDataUsage(Landroid/content/Context;Z)V

    .line 247
    return-void
.end method

.method private static setSourceApplication(Landroid/app/Activity;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    .line 981
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 982
    .local v3, "callingApplication":Landroid/content/ComponentName;
    if-eqz v3, :cond_1b

    .line 983
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 984
    .local v4, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 986
    invoke-static {}, Lcom/facebook/AppEventsLogger;->resetSourceApplication()V

    .line 1022
    .end local v4    # "callingApplicationPackage":Ljava/lang/String;
    :goto_18
    return-void

    .line 989
    .restart local v4    # "callingApplicationPackage":Ljava/lang/String;
    :cond_19
    sput-object v4, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 994
    .end local v4    # "callingApplicationPackage":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 995
    .local v5, "openIntent":Landroid/content/Intent;
    if-eqz v5, :cond_2a

    const-string v6, "_fbSourceApplicationHasBeenSet"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 996
    :cond_2a
    invoke-static {}, Lcom/facebook/AppEventsLogger;->resetSourceApplication()V

    goto :goto_18

    .line 1000
    :cond_2e
    invoke-static {v5}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1002
    .local v0, "applinkData":Landroid/os/Bundle;
    if-nez v0, :cond_38

    .line 1003
    invoke-static {}, Lcom/facebook/AppEventsLogger;->resetSourceApplication()V

    goto :goto_18

    .line 1007
    :cond_38
    sput-boolean v8, Lcom/facebook/AppEventsLogger;->isOpenedByApplink:Z

    .line 1009
    const-string v6, "referer_app_link"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1011
    .local v1, "applinkReferrerData":Landroid/os/Bundle;
    if-nez v1, :cond_46

    .line 1012
    const/4 v6, 0x0

    sput-object v6, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    goto :goto_18

    .line 1016
    :cond_46
    const-string v6, "package"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "applinkReferrerPackage":Ljava/lang/String;
    sput-object v2, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1020
    const-string v6, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_18
.end method

.method static setSourceApplication(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "applicationPackage"    # Ljava/lang/String;
    .param p1, "openByAppLink"    # Z

    .prologue
    .line 1026
    sput-object p0, Lcom/facebook/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 1027
    sput-boolean p1, Lcom/facebook/AppEventsLogger;->isOpenedByApplink:Z

    .line 1028
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .prologue
    .line 553
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 554
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isValidForSession(Lcom/facebook/Session;)Z
    .registers 4
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 569
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    .line 570
    .local v0, "other":Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public logEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 464
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 506
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 484
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 517
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 531
    if-nez p1, :cond_8

    .line 532
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 546
    :goto_7
    return-void

    .line 534
    :cond_8
    if-nez p2, :cond_10

    .line 535
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_7

    .line 539
    :cond_10
    if-nez p3, :cond_17

    .line 540
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 542
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_17
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 545
    invoke-static {}, Lcom/facebook/AppEventsLogger;->eagerFlush()V

    goto :goto_7
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # Ljava/lang/Double;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 578
    return-void
.end method