.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# static fields
.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field public static final TAG:Ljava/lang/String; = "GCMBaseIntentService"

.field private static final TOKEN:Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GCM_LIB"

.field private static sCounter:I

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mSenderIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    .line 75
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "DynamicSenderIds"

    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object p2, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/android/gcm/GCMBaseIntentService;->getName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "senderId"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCMIntentService-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "name":Ljava/lang/String;
    const-string v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent service name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v0
.end method

.method private static getName([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "flatSenderIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const-string v12, "registration_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "registrationId":Ljava/lang/String;
    const-string v12, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "error":Ljava/lang/String;
    const-string v12, "unregistered"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "unregistered":Ljava/lang/String;
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleRegistration: registrationId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", unregistered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v7, :cond_56

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 295
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gcm/GCMBaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    :cond_55
    :goto_55
    return-void

    .line 301
    :cond_56
    if-eqz v11, :cond_67

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "oldRegistrationId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gcm/GCMBaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_55

    .line 311
    .end local v6    # "oldRegistrationId":Ljava/lang/String;
    :cond_67
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Registration error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v12, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 315
    .local v8, "retry":Z
    if-eqz v8, :cond_fe

    .line 316
    invoke-static/range {p1 .. p1}, Lcom/google/android/gcm/GCMRegistrar;->getBackoff(Landroid/content/Context;)I

    move-result v3

    .line 317
    .local v3, "backoffTimeMs":I
    div-int/lit8 v12, v3, 0x2

    sget-object v13, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v13, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v5, v12, v13

    .line 319
    .local v5, "nextAttempt":I
    const-string v12, "GCMBaseIntentService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scheduling registration retry, backoff = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v9, "retryIntent":Landroid/content/Intent;
    const-string v12, "token"

    sget-object v13, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 326
    .local v10, "retryPendingIntent":Landroid/app/PendingIntent;
    const-string v12, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 328
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v12, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    int-to-long v15, v5

    add-long/2addr v13, v15

    invoke-virtual {v2, v12, v13, v14, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 332
    sget v12, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    if-ge v3, v12, :cond_55

    .line 333
    mul-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    goto/16 :goto_55

    .line 336
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v3    # "backoffTimeMs":I
    .end local v5    # "nextAttempt":I
    .end local v9    # "retryIntent":Landroid/content/Intent;
    .end local v10    # "retryPendingIntent":Landroid/app/PendingIntent;
    :cond_fe
    const-string v12, "GCMBaseIntentService"

    const-string v13, "Not retrying failed operation"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 340
    .end local v8    # "retry":Z
    :cond_107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gcm/GCMBaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_55
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_3
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_18

    .line 273
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 275
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "GCM_LIB"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    .line 279
    const-string v1, "GCMBaseIntentService"

    const-string v2, "Acquiring wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    return-void

    .line 278
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_c
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "total"    # I

    .prologue
    .line 146
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 196
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->setRetryBroadcastReceiver(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0, v1, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_85

    .line 248
    :cond_16
    :goto_16
    sget-object v9, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 250
    :try_start_19
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_11d

    .line 251
    const-string v8, "GCMBaseIntentService"

    const-string v10, "Releasing wakelock"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_29
    monitor-exit v9
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_126

    .line 259
    :goto_2a
    return-void

    .line 198
    :cond_2b
    :try_start_2b
    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 200
    const-string v8, "message_type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "messageType":Ljava/lang/String;
    if-eqz v3, :cond_b5

    .line 203
    const-string v8, "deleted_messages"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 204
    const-string v8, "total_deleted"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_85

    move-result-object v4

    .line 206
    .local v4, "sTotal":Ljava/lang/String;
    if-eqz v4, :cond_16

    .line 208
    :try_start_4b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, "total":I
    const-string v8, "GCMBaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received deleted messages notification: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, v1, v7}, Lcom/google/android/gcm/GCMBaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_6a} :catch_6b
    .catchall {:try_start_4b .. :try_end_6a} :catchall_85

    goto :goto_16

    .line 212
    .end local v7    # "total":I
    :catch_6b
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_6c
    const-string v8, "GCMBaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GCM returned invalid number of deleted messages: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_85

    goto :goto_16

    .line 248
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "messageType":Ljava/lang/String;
    .end local v4    # "sTotal":Ljava/lang/String;
    :catchall_85
    move-exception v8

    sget-object v9, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 250
    :try_start_89
    sget-object v10, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_129

    .line 251
    const-string v10, "GCMBaseIntentService"

    const-string v11, "Releasing wakelock"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v10, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_99
    monitor-exit v9
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_132

    throw v8

    .line 219
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "messageType":Ljava/lang/String;
    :cond_9b
    :try_start_9b
    const-string v8, "GCMBaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unknown special message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 223
    :cond_b5
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_16

    .line 225
    .end local v3    # "messageType":Ljava/lang/String;
    :cond_ba
    const-string v8, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 226
    const-string v8, "token"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "token":Ljava/lang/String;
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_109

    .line 230
    const-string v8, "GCMBaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received invalid token: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_9b .. :try_end_e8} :catchall_85

    .line 248
    sget-object v9, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 250
    :try_start_eb
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_101

    .line 251
    const-string v8, "GCMBaseIntentService"

    const-string v10, "Releasing wakelock"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v8, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_fb
    monitor-exit v9

    goto/16 :goto_2a

    :catchall_fe
    move-exception v8

    monitor-exit v9
    :try_end_100
    .catchall {:try_start_eb .. :try_end_100} :catchall_fe

    throw v8

    .line 255
    :cond_101
    :try_start_101
    const-string v8, "GCMBaseIntentService"

    const-string v10, "Wakelock reference is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_101 .. :try_end_108} :catchall_fe

    goto :goto_fb

    .line 234
    :cond_109
    :try_start_109
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_114

    .line 235
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    goto/16 :goto_16

    .line 237
    :cond_114
    invoke-virtual {p0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->getSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "senderIds":[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_109 .. :try_end_11b} :catchall_85

    goto/16 :goto_16

    .line 255
    .end local v5    # "senderIds":[Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    const-string v8, "GCMBaseIntentService"

    const-string v10, "Wakelock reference is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 257
    :catchall_126
    move-exception v8

    monitor-exit v9
    :try_end_128
    .catchall {:try_start_11d .. :try_end_128} :catchall_126

    throw v8

    .line 255
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :cond_129
    :try_start_129
    const-string v10, "GCMBaseIntentService"

    const-string v11, "Wakelock reference is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 257
    :catchall_132
    move-exception v8

    monitor-exit v9
    :try_end_134
    .catchall {:try_start_129 .. :try_end_134} :catchall_132

    throw v8
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
